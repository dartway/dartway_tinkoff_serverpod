/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: invalid_use_of_visible_for_testing_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class DwTinkoffLog implements _i1.TableRow, _i1.ProtocolSerialization {
  DwTinkoffLog._({
    this.id,
    required this.timestamp,
    this.terminalKey,
    required this.logType,
    this.method,
    this.endpoint,
    this.paramsString,
    this.tinkoffCustomerId,
    this.paymentId,
    this.paymentStatus,
    this.isOk,
    this.statusCode,
    this.statusMessage,
    this.error,
    this.errorDetails,
    this.responseData,
  });

  factory DwTinkoffLog({
    int? id,
    required DateTime timestamp,
    String? terminalKey,
    required _i2.DwTinkoffLogType logType,
    _i2.DwTinkoffApiMethod? method,
    String? endpoint,
    String? paramsString,
    String? tinkoffCustomerId,
    String? paymentId,
    String? paymentStatus,
    bool? isOk,
    int? statusCode,
    String? statusMessage,
    String? error,
    String? errorDetails,
    String? responseData,
  }) = _DwTinkoffLogImpl;

  factory DwTinkoffLog.fromJson(Map<String, dynamic> jsonSerialization) {
    return DwTinkoffLog(
      id: jsonSerialization['id'] as int?,
      timestamp:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['timestamp']),
      terminalKey: jsonSerialization['terminalKey'] as String?,
      logType: _i2.DwTinkoffLogType.fromJson(
          (jsonSerialization['logType'] as String)),
      method: jsonSerialization['method'] == null
          ? null
          : _i2.DwTinkoffApiMethod.fromJson(
              (jsonSerialization['method'] as String)),
      endpoint: jsonSerialization['endpoint'] as String?,
      paramsString: jsonSerialization['paramsString'] as String?,
      tinkoffCustomerId: jsonSerialization['tinkoffCustomerId'] as String?,
      paymentId: jsonSerialization['paymentId'] as String?,
      paymentStatus: jsonSerialization['paymentStatus'] as String?,
      isOk: jsonSerialization['isOk'] as bool?,
      statusCode: jsonSerialization['statusCode'] as int?,
      statusMessage: jsonSerialization['statusMessage'] as String?,
      error: jsonSerialization['error'] as String?,
      errorDetails: jsonSerialization['errorDetails'] as String?,
      responseData: jsonSerialization['responseData'] as String?,
    );
  }

  static final t = DwTinkoffLogTable();

  static const db = DwTinkoffLogRepository._();

  @override
  int? id;

  DateTime timestamp;

  String? terminalKey;

  _i2.DwTinkoffLogType logType;

  _i2.DwTinkoffApiMethod? method;

  String? endpoint;

  String? paramsString;

  String? tinkoffCustomerId;

  String? paymentId;

  String? paymentStatus;

  bool? isOk;

  int? statusCode;

  String? statusMessage;

  String? error;

  String? errorDetails;

  String? responseData;

  @override
  _i1.Table get table => t;

  DwTinkoffLog copyWith({
    int? id,
    DateTime? timestamp,
    String? terminalKey,
    _i2.DwTinkoffLogType? logType,
    _i2.DwTinkoffApiMethod? method,
    String? endpoint,
    String? paramsString,
    String? tinkoffCustomerId,
    String? paymentId,
    String? paymentStatus,
    bool? isOk,
    int? statusCode,
    String? statusMessage,
    String? error,
    String? errorDetails,
    String? responseData,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'timestamp': timestamp.toJson(),
      if (terminalKey != null) 'terminalKey': terminalKey,
      'logType': logType.toJson(),
      if (method != null) 'method': method?.toJson(),
      if (endpoint != null) 'endpoint': endpoint,
      if (paramsString != null) 'paramsString': paramsString,
      if (tinkoffCustomerId != null) 'tinkoffCustomerId': tinkoffCustomerId,
      if (paymentId != null) 'paymentId': paymentId,
      if (paymentStatus != null) 'paymentStatus': paymentStatus,
      if (isOk != null) 'isOk': isOk,
      if (statusCode != null) 'statusCode': statusCode,
      if (statusMessage != null) 'statusMessage': statusMessage,
      if (error != null) 'error': error,
      if (errorDetails != null) 'errorDetails': errorDetails,
      if (responseData != null) 'responseData': responseData,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'timestamp': timestamp.toJson(),
      if (terminalKey != null) 'terminalKey': terminalKey,
      'logType': logType.toJson(),
      if (method != null) 'method': method?.toJson(),
      if (endpoint != null) 'endpoint': endpoint,
      if (paramsString != null) 'paramsString': paramsString,
      if (tinkoffCustomerId != null) 'tinkoffCustomerId': tinkoffCustomerId,
      if (paymentId != null) 'paymentId': paymentId,
      if (paymentStatus != null) 'paymentStatus': paymentStatus,
      if (isOk != null) 'isOk': isOk,
      if (statusCode != null) 'statusCode': statusCode,
      if (statusMessage != null) 'statusMessage': statusMessage,
      if (error != null) 'error': error,
      if (errorDetails != null) 'errorDetails': errorDetails,
      if (responseData != null) 'responseData': responseData,
    };
  }

  static DwTinkoffLogInclude include() {
    return DwTinkoffLogInclude._();
  }

  static DwTinkoffLogIncludeList includeList({
    _i1.WhereExpressionBuilder<DwTinkoffLogTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DwTinkoffLogTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DwTinkoffLogTable>? orderByList,
    DwTinkoffLogInclude? include,
  }) {
    return DwTinkoffLogIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DwTinkoffLog.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DwTinkoffLog.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DwTinkoffLogImpl extends DwTinkoffLog {
  _DwTinkoffLogImpl({
    int? id,
    required DateTime timestamp,
    String? terminalKey,
    required _i2.DwTinkoffLogType logType,
    _i2.DwTinkoffApiMethod? method,
    String? endpoint,
    String? paramsString,
    String? tinkoffCustomerId,
    String? paymentId,
    String? paymentStatus,
    bool? isOk,
    int? statusCode,
    String? statusMessage,
    String? error,
    String? errorDetails,
    String? responseData,
  }) : super._(
          id: id,
          timestamp: timestamp,
          terminalKey: terminalKey,
          logType: logType,
          method: method,
          endpoint: endpoint,
          paramsString: paramsString,
          tinkoffCustomerId: tinkoffCustomerId,
          paymentId: paymentId,
          paymentStatus: paymentStatus,
          isOk: isOk,
          statusCode: statusCode,
          statusMessage: statusMessage,
          error: error,
          errorDetails: errorDetails,
          responseData: responseData,
        );

  @override
  DwTinkoffLog copyWith({
    Object? id = _Undefined,
    DateTime? timestamp,
    Object? terminalKey = _Undefined,
    _i2.DwTinkoffLogType? logType,
    Object? method = _Undefined,
    Object? endpoint = _Undefined,
    Object? paramsString = _Undefined,
    Object? tinkoffCustomerId = _Undefined,
    Object? paymentId = _Undefined,
    Object? paymentStatus = _Undefined,
    Object? isOk = _Undefined,
    Object? statusCode = _Undefined,
    Object? statusMessage = _Undefined,
    Object? error = _Undefined,
    Object? errorDetails = _Undefined,
    Object? responseData = _Undefined,
  }) {
    return DwTinkoffLog(
      id: id is int? ? id : this.id,
      timestamp: timestamp ?? this.timestamp,
      terminalKey: terminalKey is String? ? terminalKey : this.terminalKey,
      logType: logType ?? this.logType,
      method: method is _i2.DwTinkoffApiMethod? ? method : this.method,
      endpoint: endpoint is String? ? endpoint : this.endpoint,
      paramsString: paramsString is String? ? paramsString : this.paramsString,
      tinkoffCustomerId: tinkoffCustomerId is String?
          ? tinkoffCustomerId
          : this.tinkoffCustomerId,
      paymentId: paymentId is String? ? paymentId : this.paymentId,
      paymentStatus:
          paymentStatus is String? ? paymentStatus : this.paymentStatus,
      isOk: isOk is bool? ? isOk : this.isOk,
      statusCode: statusCode is int? ? statusCode : this.statusCode,
      statusMessage:
          statusMessage is String? ? statusMessage : this.statusMessage,
      error: error is String? ? error : this.error,
      errorDetails: errorDetails is String? ? errorDetails : this.errorDetails,
      responseData: responseData is String? ? responseData : this.responseData,
    );
  }
}

class DwTinkoffLogTable extends _i1.Table {
  DwTinkoffLogTable({super.tableRelation})
      : super(tableName: 'dw_tinkoff_log') {
    timestamp = _i1.ColumnDateTime(
      'timestamp',
      this,
    );
    terminalKey = _i1.ColumnString(
      'terminalKey',
      this,
    );
    logType = _i1.ColumnEnum(
      'logType',
      this,
      _i1.EnumSerialization.byName,
    );
    method = _i1.ColumnEnum(
      'method',
      this,
      _i1.EnumSerialization.byName,
    );
    endpoint = _i1.ColumnString(
      'endpoint',
      this,
    );
    paramsString = _i1.ColumnString(
      'paramsString',
      this,
    );
    tinkoffCustomerId = _i1.ColumnString(
      'tinkoffCustomerId',
      this,
    );
    paymentId = _i1.ColumnString(
      'paymentId',
      this,
    );
    paymentStatus = _i1.ColumnString(
      'paymentStatus',
      this,
    );
    isOk = _i1.ColumnBool(
      'isOk',
      this,
    );
    statusCode = _i1.ColumnInt(
      'statusCode',
      this,
    );
    statusMessage = _i1.ColumnString(
      'statusMessage',
      this,
    );
    error = _i1.ColumnString(
      'error',
      this,
    );
    errorDetails = _i1.ColumnString(
      'errorDetails',
      this,
    );
    responseData = _i1.ColumnString(
      'responseData',
      this,
    );
  }

  late final _i1.ColumnDateTime timestamp;

  late final _i1.ColumnString terminalKey;

  late final _i1.ColumnEnum<_i2.DwTinkoffLogType> logType;

  late final _i1.ColumnEnum<_i2.DwTinkoffApiMethod> method;

  late final _i1.ColumnString endpoint;

  late final _i1.ColumnString paramsString;

  late final _i1.ColumnString tinkoffCustomerId;

  late final _i1.ColumnString paymentId;

  late final _i1.ColumnString paymentStatus;

  late final _i1.ColumnBool isOk;

  late final _i1.ColumnInt statusCode;

  late final _i1.ColumnString statusMessage;

  late final _i1.ColumnString error;

  late final _i1.ColumnString errorDetails;

  late final _i1.ColumnString responseData;

  @override
  List<_i1.Column> get columns => [
        id,
        timestamp,
        terminalKey,
        logType,
        method,
        endpoint,
        paramsString,
        tinkoffCustomerId,
        paymentId,
        paymentStatus,
        isOk,
        statusCode,
        statusMessage,
        error,
        errorDetails,
        responseData,
      ];
}

class DwTinkoffLogInclude extends _i1.IncludeObject {
  DwTinkoffLogInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => DwTinkoffLog.t;
}

class DwTinkoffLogIncludeList extends _i1.IncludeList {
  DwTinkoffLogIncludeList._({
    _i1.WhereExpressionBuilder<DwTinkoffLogTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DwTinkoffLog.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => DwTinkoffLog.t;
}

class DwTinkoffLogRepository {
  const DwTinkoffLogRepository._();

  Future<List<DwTinkoffLog>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DwTinkoffLogTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DwTinkoffLogTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DwTinkoffLogTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DwTinkoffLog>(
      where: where?.call(DwTinkoffLog.t),
      orderBy: orderBy?.call(DwTinkoffLog.t),
      orderByList: orderByList?.call(DwTinkoffLog.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwTinkoffLog?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DwTinkoffLogTable>? where,
    int? offset,
    _i1.OrderByBuilder<DwTinkoffLogTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DwTinkoffLogTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<DwTinkoffLog>(
      where: where?.call(DwTinkoffLog.t),
      orderBy: orderBy?.call(DwTinkoffLog.t),
      orderByList: orderByList?.call(DwTinkoffLog.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwTinkoffLog?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<DwTinkoffLog>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwTinkoffLog>> insert(
    _i1.Session session,
    List<DwTinkoffLog> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<DwTinkoffLog>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwTinkoffLog> insertRow(
    _i1.Session session,
    DwTinkoffLog row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<DwTinkoffLog>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwTinkoffLog>> update(
    _i1.Session session,
    List<DwTinkoffLog> rows, {
    _i1.ColumnSelections<DwTinkoffLogTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<DwTinkoffLog>(
      rows,
      columns: columns?.call(DwTinkoffLog.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwTinkoffLog> updateRow(
    _i1.Session session,
    DwTinkoffLog row, {
    _i1.ColumnSelections<DwTinkoffLogTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<DwTinkoffLog>(
      row,
      columns: columns?.call(DwTinkoffLog.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwTinkoffLog>> delete(
    _i1.Session session,
    List<DwTinkoffLog> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DwTinkoffLog>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwTinkoffLog> deleteRow(
    _i1.Session session,
    DwTinkoffLog row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<DwTinkoffLog>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwTinkoffLog>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DwTinkoffLogTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<DwTinkoffLog>(
      where: where(DwTinkoffLog.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DwTinkoffLogTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DwTinkoffLog>(
      where: where?.call(DwTinkoffLog.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
