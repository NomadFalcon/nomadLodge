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

abstract class Fee implements _i1.TableRow, _i1.ProtocolSerialization {
  Fee._({
    this.id,
    required this.name,
    required this.description,
    required this.value,
  });

  factory Fee({
    int? id,
    required String name,
    required String description,
    required double value,
  }) = _FeeImpl;

  factory Fee.fromJson(Map<String, dynamic> jsonSerialization) {
    return Fee(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String,
      value: (jsonSerialization['value'] as num).toDouble(),
    );
  }

  static final t = FeeTable();

  static const db = FeeRepository._();

  @override
  int? id;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'value': value,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<FeeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FeeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FeeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<Fee>(
      where: where?.call(Fee.t),
      orderBy: orderBy?.call(Fee.t),
      orderByList: orderByList?.call(Fee.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Fee?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<FeeTable>? where,
    int? offset,
    _i1.OrderByBuilder<FeeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FeeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<Fee>(
      where: where?.call(Fee.t),
      orderBy: orderBy?.call(Fee.t),
      orderByList: orderByList?.call(Fee.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Fee?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<Fee>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Fee>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Fee> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Fee>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Fee> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Fee row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Fee>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Fee>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Fee> rows, {
    _i1.ColumnSelections<FeeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Fee>(
      rows,
      columns: columns?.call(Fee.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Fee> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Fee row, {
    _i1.ColumnSelections<FeeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Fee>(
      row,
      columns: columns?.call(Fee.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Fee>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Fee> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Fee>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Fee> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Fee row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Fee>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Fee>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<FeeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Fee>(
      where: where(Fee.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<FeeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Fee>(
      where: where?.call(Fee.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
