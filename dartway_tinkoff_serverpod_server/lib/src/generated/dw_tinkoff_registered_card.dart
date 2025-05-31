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

abstract class DwTinkoffRegisteredCard
    implements _i1.TableRow, _i1.ProtocolSerialization {
  DwTinkoffRegisteredCard._({
    this.id,
    required this.tinkoffCustomerId,
    required this.cardPan,
    required this.status,
    required this.tinkoffCardId,
    this.rebillId,
  });

  factory DwTinkoffRegisteredCard({
    int? id,
    required String tinkoffCustomerId,
    required String cardPan,
    required String status,
    required String tinkoffCardId,
    String? rebillId,
  }) = _DwTinkoffRegisteredCardImpl;

  factory DwTinkoffRegisteredCard.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return DwTinkoffRegisteredCard(
      id: jsonSerialization['id'] as int?,
      tinkoffCustomerId: jsonSerialization['tinkoffCustomerId'] as String,
      cardPan: jsonSerialization['cardPan'] as String,
      status: jsonSerialization['status'] as String,
      tinkoffCardId: jsonSerialization['tinkoffCardId'] as String,
      rebillId: jsonSerialization['rebillId'] as String?,
    );
  }

  static final t = DwTinkoffRegisteredCardTable();

  static const db = DwTinkoffRegisteredCardRepository._();

  @override
  int? id;

  String tinkoffCustomerId;

  String cardPan;

  String status;

  String tinkoffCardId;

  String? rebillId;

  @override
  _i1.Table get table => t;

  DwTinkoffRegisteredCard copyWith({
    int? id,
    String? tinkoffCustomerId,
    String? cardPan,
    String? status,
    String? tinkoffCardId,
    String? rebillId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'tinkoffCustomerId': tinkoffCustomerId,
      'cardPan': cardPan,
      'status': status,
      'tinkoffCardId': tinkoffCardId,
      if (rebillId != null) 'rebillId': rebillId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'tinkoffCustomerId': tinkoffCustomerId,
      'cardPan': cardPan,
      'status': status,
      'tinkoffCardId': tinkoffCardId,
      if (rebillId != null) 'rebillId': rebillId,
    };
  }

  static DwTinkoffRegisteredCardInclude include() {
    return DwTinkoffRegisteredCardInclude._();
  }

  static DwTinkoffRegisteredCardIncludeList includeList({
    _i1.WhereExpressionBuilder<DwTinkoffRegisteredCardTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DwTinkoffRegisteredCardTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DwTinkoffRegisteredCardTable>? orderByList,
    DwTinkoffRegisteredCardInclude? include,
  }) {
    return DwTinkoffRegisteredCardIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DwTinkoffRegisteredCard.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DwTinkoffRegisteredCard.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DwTinkoffRegisteredCardImpl extends DwTinkoffRegisteredCard {
  _DwTinkoffRegisteredCardImpl({
    int? id,
    required String tinkoffCustomerId,
    required String cardPan,
    required String status,
    required String tinkoffCardId,
    String? rebillId,
  }) : super._(
          id: id,
          tinkoffCustomerId: tinkoffCustomerId,
          cardPan: cardPan,
          status: status,
          tinkoffCardId: tinkoffCardId,
          rebillId: rebillId,
        );

  @override
  DwTinkoffRegisteredCard copyWith({
    Object? id = _Undefined,
    String? tinkoffCustomerId,
    String? cardPan,
    String? status,
    String? tinkoffCardId,
    Object? rebillId = _Undefined,
  }) {
    return DwTinkoffRegisteredCard(
      id: id is int? ? id : this.id,
      tinkoffCustomerId: tinkoffCustomerId ?? this.tinkoffCustomerId,
      cardPan: cardPan ?? this.cardPan,
      status: status ?? this.status,
      tinkoffCardId: tinkoffCardId ?? this.tinkoffCardId,
      rebillId: rebillId is String? ? rebillId : this.rebillId,
    );
  }
}

class DwTinkoffRegisteredCardTable extends _i1.Table {
  DwTinkoffRegisteredCardTable({super.tableRelation})
      : super(tableName: 'dw_tinkoff_registered_card') {
    tinkoffCustomerId = _i1.ColumnString(
      'tinkoffCustomerId',
      this,
    );
    cardPan = _i1.ColumnString(
      'cardPan',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    tinkoffCardId = _i1.ColumnString(
      'tinkoffCardId',
      this,
    );
    rebillId = _i1.ColumnString(
      'rebillId',
      this,
    );
  }

  late final _i1.ColumnString tinkoffCustomerId;

  late final _i1.ColumnString cardPan;

  late final _i1.ColumnString status;

  late final _i1.ColumnString tinkoffCardId;

  late final _i1.ColumnString rebillId;

  @override
  List<_i1.Column> get columns => [
        id,
        tinkoffCustomerId,
        cardPan,
        status,
        tinkoffCardId,
        rebillId,
      ];
}

class DwTinkoffRegisteredCardInclude extends _i1.IncludeObject {
  DwTinkoffRegisteredCardInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => DwTinkoffRegisteredCard.t;
}

class DwTinkoffRegisteredCardIncludeList extends _i1.IncludeList {
  DwTinkoffRegisteredCardIncludeList._({
    _i1.WhereExpressionBuilder<DwTinkoffRegisteredCardTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DwTinkoffRegisteredCard.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => DwTinkoffRegisteredCard.t;
}

class DwTinkoffRegisteredCardRepository {
  const DwTinkoffRegisteredCardRepository._();

  Future<List<DwTinkoffRegisteredCard>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DwTinkoffRegisteredCardTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DwTinkoffRegisteredCardTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DwTinkoffRegisteredCardTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DwTinkoffRegisteredCard>(
      where: where?.call(DwTinkoffRegisteredCard.t),
      orderBy: orderBy?.call(DwTinkoffRegisteredCard.t),
      orderByList: orderByList?.call(DwTinkoffRegisteredCard.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwTinkoffRegisteredCard?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DwTinkoffRegisteredCardTable>? where,
    int? offset,
    _i1.OrderByBuilder<DwTinkoffRegisteredCardTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DwTinkoffRegisteredCardTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<DwTinkoffRegisteredCard>(
      where: where?.call(DwTinkoffRegisteredCard.t),
      orderBy: orderBy?.call(DwTinkoffRegisteredCard.t),
      orderByList: orderByList?.call(DwTinkoffRegisteredCard.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwTinkoffRegisteredCard?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<DwTinkoffRegisteredCard>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwTinkoffRegisteredCard>> insert(
    _i1.Session session,
    List<DwTinkoffRegisteredCard> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<DwTinkoffRegisteredCard>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwTinkoffRegisteredCard> insertRow(
    _i1.Session session,
    DwTinkoffRegisteredCard row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<DwTinkoffRegisteredCard>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwTinkoffRegisteredCard>> update(
    _i1.Session session,
    List<DwTinkoffRegisteredCard> rows, {
    _i1.ColumnSelections<DwTinkoffRegisteredCardTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<DwTinkoffRegisteredCard>(
      rows,
      columns: columns?.call(DwTinkoffRegisteredCard.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwTinkoffRegisteredCard> updateRow(
    _i1.Session session,
    DwTinkoffRegisteredCard row, {
    _i1.ColumnSelections<DwTinkoffRegisteredCardTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<DwTinkoffRegisteredCard>(
      row,
      columns: columns?.call(DwTinkoffRegisteredCard.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwTinkoffRegisteredCard>> delete(
    _i1.Session session,
    List<DwTinkoffRegisteredCard> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DwTinkoffRegisteredCard>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwTinkoffRegisteredCard> deleteRow(
    _i1.Session session,
    DwTinkoffRegisteredCard row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<DwTinkoffRegisteredCard>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwTinkoffRegisteredCard>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DwTinkoffRegisteredCardTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<DwTinkoffRegisteredCard>(
      where: where(DwTinkoffRegisteredCard.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DwTinkoffRegisteredCardTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DwTinkoffRegisteredCard>(
      where: where?.call(DwTinkoffRegisteredCard.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
