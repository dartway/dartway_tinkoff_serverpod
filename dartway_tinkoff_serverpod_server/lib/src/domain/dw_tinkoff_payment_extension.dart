import 'package:dartway_tinkoff_serverpod_server/dartway_tinkoff_serverpod_server.dart';

extension DwTinkoffPaymentExtension on DwTinkoffPayment {
  /// Обновление платежа на основании данных вебхука
  DwTinkoffPayment updateFromWebhook({
    required dynamic webhookJsonBody,
  }) {
    return copyWith(
      updatedAt: updatedAt,
      tinkoffRawStatus: webhookJsonBody['Status'],
      tinkoffStatus: _paymentStatusFromTinkoffRawStatus(
        webhookJsonBody['Status'],
      ),
    );
  }

  /// Создание платежа из ответа Init
  static DwTinkoffPayment fromInitPaymentResponse({
    required String orderIdentifier,
    required dynamic initPaymentResponseBody,
  }) =>
      DwTinkoffPayment(
        tinkoffCustomerId: initPaymentResponseBody['CustomerKey'],
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        terminalKey: initPaymentResponseBody['TerminalKey'],
        tinkoffRawStatus: initPaymentResponseBody['Status'],
        tinkoffStatus: _paymentStatusFromTinkoffRawStatus(
            initPaymentResponseBody['Status']),
        tinkoffPaymentId: initPaymentResponseBody['PaymentId'].toString(),
        orderIdentifier: orderIdentifier,
        amount: initPaymentResponseBody['Amount'],
        paymentUrl: initPaymentResponseBody['PaymentURL'],
      );

  /// Получение корректного статуса из строки
  static DwTinkoffPaymentStatus _paymentStatusFromTinkoffRawStatus(
      String? value) {
    if (value == null) return DwTinkoffPaymentStatus.unknown;
    return _paymentStatusMap[value.toUpperCase()] ??
        DwTinkoffPaymentStatus.unknown;
  }

  /// Словарь преобразования строк в enum-статусы
  static const Map<String, DwTinkoffPaymentStatus> _paymentStatusMap = {
    'NEW': DwTinkoffPaymentStatus.newPayment,
    'FORM_SHOWED': DwTinkoffPaymentStatus.formShowed,
    'AUTHORIZING': DwTinkoffPaymentStatus.authorizing,
    'AUTHORIZED': DwTinkoffPaymentStatus.authorized,
    'CONFIRMING': DwTinkoffPaymentStatus.confirming,
    'CONFIRMED': DwTinkoffPaymentStatus.confirmed,
    'REFUNDING': DwTinkoffPaymentStatus.refunding,
    'ASYNC_REFUNDING': DwTinkoffPaymentStatus.asyncRefunding,
    'PARTIAL_REFUNDED': DwTinkoffPaymentStatus.partialRefunded,
    'REFUNDED': DwTinkoffPaymentStatus.refunded,
    'CANCELED': DwTinkoffPaymentStatus.canceled,
    'DEADLINE_EXPIRED': DwTinkoffPaymentStatus.deadlineExpired,
    'ATTEMPTS_EXPIRED': DwTinkoffPaymentStatus.attemptsExpired,
    'REJECTED': DwTinkoffPaymentStatus.rejected,
    'AUTH_FAIL': DwTinkoffPaymentStatus.authFail,
  };
}
