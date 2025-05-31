/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

enum DwTinkoffPaymentStatus implements _i1.SerializableModel {
  unknown,
  newPayment,
  formShowed,
  authorizing,
  authorized,
  confirming,
  confirmed,
  refunding,
  asyncRefunding,
  partialRefunded,
  refunded,
  canceled,
  deadlineExpired,
  attemptsExpired,
  rejected,
  authFail;

  static DwTinkoffPaymentStatus fromJson(String name) {
    switch (name) {
      case 'unknown':
        return unknown;
      case 'newPayment':
        return newPayment;
      case 'formShowed':
        return formShowed;
      case 'authorizing':
        return authorizing;
      case 'authorized':
        return authorized;
      case 'confirming':
        return confirming;
      case 'confirmed':
        return confirmed;
      case 'refunding':
        return refunding;
      case 'asyncRefunding':
        return asyncRefunding;
      case 'partialRefunded':
        return partialRefunded;
      case 'refunded':
        return refunded;
      case 'canceled':
        return canceled;
      case 'deadlineExpired':
        return deadlineExpired;
      case 'attemptsExpired':
        return attemptsExpired;
      case 'rejected':
        return rejected;
      case 'authFail':
        return authFail;
      default:
        throw ArgumentError(
            'Value "$name" cannot be converted to "DwTinkoffPaymentStatus"');
    }
  }

  @override
  String toJson() => name;
  @override
  String toString() => name;
}
