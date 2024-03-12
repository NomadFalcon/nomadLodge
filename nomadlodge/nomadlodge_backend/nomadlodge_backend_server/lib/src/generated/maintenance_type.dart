/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Maintenancetype extends _i1.TableRow {
  Maintenancetype._({
    int? id,
    required this.name,
    required this.description,
    this.icon,
  }) : super(id);

  factory Maintenancetype({
    int? id,
    required String name,
    required String description,
    String? icon,
  }) = _MaintenancetypeImpl;

  factory Maintenancetype.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Maintenancetype(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      icon:
          serializationManager.deserialize<String?>(jsonSerialization['icon']),
    );
  }

  static final t = MaintenancetypeTable();

  static const db = MaintenancetypeRepository._();

  String name;

  String description;

  String? icon;

  @override
  _i1.Table get table => t;

  Maintenancetype copyWith({
    int? id,
    String? name,
    String? description,
    String? icon,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      if (icon != null) 'icon': icon,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'icon': icon,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      if (icon != null) 'icon': icon,
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
      case 'icon':
        icon = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Maintenancetype>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MaintenancetypeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Maintenancetype>(
      where: where != null ? where(Maintenancetype.t) : null,
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
  static Future<Maintenancetype?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MaintenancetypeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Maintenancetype>(
      where: where != null ? where(Maintenancetype.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Maintenancetype?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Maintenancetype>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MaintenancetypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Maintenancetype>(
      where: where(Maintenancetype.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Maintenancetype row, {
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
    Maintenancetype row, {
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
    Maintenancetype row, {
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
    _i1.WhereExpressionBuilder<MaintenancetypeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Maintenancetype>(
      where: where != null ? where(Maintenancetype.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static MaintenancetypeInclude include() {
    return MaintenancetypeInclude._();
  }

  static MaintenancetypeIncludeList includeList({
    _i1.WhereExpressionBuilder<MaintenancetypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MaintenancetypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MaintenancetypeTable>? orderByList,
    MaintenancetypeInclude? include,
  }) {
    return MaintenancetypeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Maintenancetype.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Maintenancetype.t),
      include: include,
    );
  }
}

class _Undefined {}

class _MaintenancetypeImpl extends Maintenancetype {
  _MaintenancetypeImpl({
    int? id,
    required String name,
    required String description,
    String? icon,
  }) : super._(
          id: id,
          name: name,
          description: description,
          icon: icon,
        );

  @override
  Maintenancetype copyWith({
    Object? id = _Undefined,
    String? name,
    String? description,
    Object? icon = _Undefined,
  }) {
    return Maintenancetype(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      icon: icon is String? ? icon : this.icon,
    );
  }
}

class MaintenancetypeTable extends _i1.Table {
  MaintenancetypeTable({super.tableRelation})
      : super(tableName: 'maintenancetype') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    icon = _i1.ColumnString(
      'icon',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnString icon;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        description,
        icon,
      ];
}

@Deprecated('Use MaintenancetypeTable.t instead.')
MaintenancetypeTable tMaintenancetype = MaintenancetypeTable();

class MaintenancetypeInclude extends _i1.IncludeObject {
  MaintenancetypeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Maintenancetype.t;
}

class MaintenancetypeIncludeList extends _i1.IncludeList {
  MaintenancetypeIncludeList._({
    _i1.WhereExpressionBuilder<MaintenancetypeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Maintenancetype.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Maintenancetype.t;
}

class MaintenancetypeRepository {
  const MaintenancetypeRepository._();

  Future<List<Maintenancetype>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MaintenancetypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MaintenancetypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MaintenancetypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Maintenancetype>(
      where: where?.call(Maintenancetype.t),
      orderBy: orderBy?.call(Maintenancetype.t),
      orderByList: orderByList?.call(Maintenancetype.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Maintenancetype?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MaintenancetypeTable>? where,
    int? offset,
    _i1.OrderByBuilder<MaintenancetypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MaintenancetypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Maintenancetype>(
      where: where?.call(Maintenancetype.t),
      orderBy: orderBy?.call(Maintenancetype.t),
      orderByList: orderByList?.call(Maintenancetype.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Maintenancetype?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Maintenancetype>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Maintenancetype>> insert(
    _i1.Session session,
    List<Maintenancetype> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Maintenancetype>(
      rows,
      transaction: transaction,
    );
  }

  Future<Maintenancetype> insertRow(
    _i1.Session session,
    Maintenancetype row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Maintenancetype>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Maintenancetype>> update(
    _i1.Session session,
    List<Maintenancetype> rows, {
    _i1.ColumnSelections<MaintenancetypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Maintenancetype>(
      rows,
      columns: columns?.call(Maintenancetype.t),
      transaction: transaction,
    );
  }

  Future<Maintenancetype> updateRow(
    _i1.Session session,
    Maintenancetype row, {
    _i1.ColumnSelections<MaintenancetypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Maintenancetype>(
      row,
      columns: columns?.call(Maintenancetype.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Maintenancetype> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Maintenancetype>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Maintenancetype row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Maintenancetype>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MaintenancetypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Maintenancetype>(
      where: where(Maintenancetype.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MaintenancetypeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Maintenancetype>(
      where: where?.call(Maintenancetype.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
