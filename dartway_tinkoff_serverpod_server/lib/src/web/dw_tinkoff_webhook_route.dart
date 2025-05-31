import 'dart:convert';
import 'dart:io';

import 'package:dartway_tinkoff_serverpod_server/dartway_tinkoff_serverpod_server.dart';
import 'package:dartway_tinkoff_serverpod_server/src/domain/dw_tinkoff_payment_extension.dart';
import 'package:serverpod/serverpod.dart';

typedef OnPaymentProcessedCallback = Future<void> Function(
  Session session,
  DwTinkoffPayment payment,
  DwTinkoffRegisteredCard card,
);

/// Класс маршрута для обработки вебхуков от Тинькофф
class DwTinkoffWebhookRoute extends Route {
  DwTinkoffWebhookRoute({
    this.onConfirmed,
    this.onRefunded,
  });

  final OnPaymentProcessedCallback? onConfirmed;

  final OnPaymentProcessedCallback? onRefunded;

  @override
  Future<bool> handleCall(Session session, HttpRequest request) async {
    Map<String, dynamic>? body;

    Future<DwTinkoffRegisteredCard> updateCard({
      required String tinkoffCustomerId,
    }) async {
      // Достаём карточные данные
      final cardId = body!['CardId']?.toString() ?? '';
      final rebillId = body['RebillId']?.toString() ?? '';
      final pan = body['Pan']?.toString() ?? '';

      if (cardId.isEmpty || rebillId.isEmpty || pan.isEmpty) {
        throw Exception('Missing card data');
      }

      var card = await DwTinkoffRegisteredCard.db.findFirstRow(
        session,
        where: (t) =>
            t.tinkoffCardId.equals(cardId) &
            t.tinkoffCustomerId.equals(tinkoffCustomerId),
      );

      return card != null
          ? await session.db.updateRow(
              card.copyWith(rebillId: rebillId),
            )
          : await session.db.insertRow(
              DwTinkoffRegisteredCard(
                tinkoffCustomerId: tinkoffCustomerId,
                cardPan: pan,
                status: 'A',
                tinkoffCardId: cardId,
                rebillId: rebillId,
              ),
            );
    }

    /// Отвечает OK на запрос (обязательно "OK" в ответе — это требование Тинькофф)
    Future<bool> respond({
      String? error,
    }) async {
      try {
        print(
          '${error == null ? 'Success' : 'Fail'} with Tinkoff webhook body: ${error ?? 'payment ${body?['PaymentId']} ${body?['Status']}'}',
        );

        await DwTinkoffLog.db.insertRow(
          session,
          DwTinkoffLog(
            timestamp: DateTime.now(),
            logType: DwTinkoffLogType.webhook,
            paramsString: jsonEncode(body ?? {'error': 'invalid json'}),
            tinkoffCustomerId: body?['CustomerKey']?.toString(),
            paymentId: body?['PaymentId']?.toString(),
            paymentStatus: body?['Status']?.toString(),
            isOk: error == null,
            statusCode: null,
            error: error,
            errorDetails: error == null ? null : StackTrace.current.toString(),
          ),
        );

        request.response.statusCode = HttpStatus.ok;
        request.response.headers.contentType = ContentType.text;
        request.response.write(
          error == null ? 'OK' : 'ERROR',
        ); // Важно: Тинькофф требует именно это
        await request.response.close();
      } catch (ex, st) {
        session.log(
          'Failed to respond to Tinkoff webhook',
          exception: ex,
          stackTrace: st,
        );
      } // Игнорируем ошибки при ответе
      return true;
    }

    try {
      if (request.method != 'POST') return false; // Только POST

      // Парсим JSON тело
      body = json.decode(await utf8.decoder.bind(request).join())
          as Map<String, dynamic>;

      // Ищем оплату по PaymentId
      final payment = await DwTinkoffPayment.db.findFirstRow(
        session,
        where: (t) => t.tinkoffPaymentId.equals(body!['PaymentId']!),
      );

      if (payment == null) {
        throw Exception(
          'Payment with ID ${body['PaymentId']} not found',
        );
      }

      // Обновляем оплату по данным из вебхука
      final updatedPayment = await session.db.updateRow(
        payment.updateFromWebhook(webhookJsonBody: body),
      );
// Обновляем или создаём зарегистрированную карту
      final updatedCard = await updateCard(
        tinkoffCustomerId: payment.tinkoffCustomerId,
      );

      if (onConfirmed != null &&
          updatedPayment.tinkoffStatus == DwTinkoffPaymentStatus.confirmed) {
        // Вызываем кастомную обработку подтверждённой оплаты
        await onConfirmed!.call(
          session,
          updatedPayment,
          updatedCard,
        );
      } else if (onRefunded != null &&
          updatedPayment.tinkoffStatus == DwTinkoffPaymentStatus.refunded) {
        // Если оплата была возвращена, то удаляем карту
        await onRefunded!.call(
          session,
          updatedPayment,
          updatedCard,
        );
      }

      return respond();
    } catch (e) {
      return respond(
        error: e.toString(),
      );
    }
  }
}
