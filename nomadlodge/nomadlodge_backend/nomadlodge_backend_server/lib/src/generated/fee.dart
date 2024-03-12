/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Fee extends _i1.TableRow {
  Fee._({
    int? id,
    required this.name,
    required this.description,
    required this.value,
  }) : super(id);

  factory Fee({
    int? id,
    required String name,
    required String description,
    required double value,
  }) = _FeeImpl;

  factory Fee.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Fee(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      value:
          serializationManager.deserialize<double>(jsonSerialization['value']),
    );
  }

  static final t = FeeTable();

  static const db = FeeRepository._();

  String name;

  String description;

  double value;

  @override
  _i1.Table get table => t;

  Fee copyWith({
    int? id,
    String? name,
    String? description,
    double? value,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'value': value,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'value': value,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'value': value,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'description':
        description = value;
        return;
      case 'value':
        value = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Fee>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FeeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Fee>(
      where: where != null ? where(Fee.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Fee?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FeeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Fee>(
      where: where != null ? where(Fee.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Fee?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Fee>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FeeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Fee>(
      where: where(Fee.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Fee row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Fee row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Fee row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FeeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Fee>(
      where: where != null ? where(Fee.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static FeeInclude include() {
    return FeeInclude._();
  }

  static FeeIncludeList includeList({
    _i1.WhereExpressionBuilder<FeeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FeeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FeeTable>? orderByList,
    FeeInclude? include,
  }) {
    return FeeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Fee.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Fee.t),
      include: include,
    );
  }
}

class _Undefined {}

class _FeeImpl extends Fee {
  _FeeImpl({
    int? id,
    required String name,
    required String description,
    required double value,
  }) : super._(
          id: id,
          name: name,
          description: description,
          value: value,
        );

  @override
  Fee copyWith({
    Object? id = _Undefined,
    String? name,
    String? description,
    double? value,
  }) {
    return Fee(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      value: value ?? this.value,
    );
  }
}

class FeeTable extends _i1.Table {
  FeeTable({super.tableRelation}) : super(tableName: 'fee') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    value = _i1.ColumnDouble(
      'value',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnDouble value;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        description,
        value,
      ];
}

@Deprecated('Use FeeTable.t instead.')
FeeTable tFee = FeeTable();

class FeeInclude extends _i1.IncludeObject {
  FeeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Fee.t;
}

class FeeIncludeList extends _i1.IncludeList {
  FeeIncludeList._({
    _i1.WhereExpressionBuilder<FeeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Fee.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Fee.t;
}

class FeeRepository {
  const FeeRepository._();

  Future<List<Fee>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FeeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FeeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FeeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Fee>(
      where: where?.call(Fee.t),
      orderBy: orderBy?.call(Fee.t),
      orderByList: orderByList?.call(Fee.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Fee?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FeeTable>? where,
    int? offset,
    _i1.OrderByBuilder<FeeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FeeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Fee>(
      where: where?.call(Fee.t),
      orderBy: orderBy?.call(Fee.t),
      orderByList: orderByList?.call(Fee.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Fee?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Fee>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Fee>> insert(
    _i1.Session session,
    List<Fee> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Fee>(
      rows,
      transaction: transaction,
    );
  }

  Future<Fee> insertRow(
    _i1.Session session,
    Fee row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Fee>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Fee>> update(
    _i1.Session session,
    List<Fee> rows, {
    _i1.ColumnSelections<FeeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Fee>(
      rows,
      columns: columns?.call(Fee.t),
      transaction: transaction,
    );
  }

  Future<Fee> updateRow(
    _i1.Session session,
    Fee row, {
    _i1.ColumnSelections<FeeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Fee>(
      row,
      columns: columns?.call(Fee.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Fee> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Fee>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Fee row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Fee>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FeeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Fee>(
      where: where(Fee.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FeeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Fee>(
      where: where?.call(Fee.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
