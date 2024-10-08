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

abstract class Maintenancetype extends _i1.TableRow
    implements _i1.ProtocolSerialization {
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

  factory Maintenancetype.fromJson(Map<String, dynamic> jsonSerialization) {
    return Maintenancetype(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String,
      icon: jsonSerialization['icon'] as String?,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      if (icon != null) 'icon': icon,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<Maintenancetype>(
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
    return session.db.findFirstRow<Maintenancetype>(
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
    return session.db.findById<Maintenancetype>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Maintenancetype>> insert(
    _i1.Session session,
    List<Maintenancetype> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Maintenancetype>(
      rows,
      transaction: transaction,
    );
  }

  Future<Maintenancetype> insertRow(
    _i1.Session session,
    Maintenancetype row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Maintenancetype>(
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
    return session.db.update<Maintenancetype>(
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
    return session.db.updateRow<Maintenancetype>(
      row,
      columns: columns?.call(Maintenancetype.t),
      transaction: transaction,
    );
  }

  Future<List<Maintenancetype>> delete(
    _i1.Session session,
    List<Maintenancetype> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Maintenancetype>(
      rows,
      transaction: transaction,
    );
  }

  Future<Maintenancetype> deleteRow(
    _i1.Session session,
    Maintenancetype row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Maintenancetype>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Maintenancetype>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MaintenancetypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Maintenancetype>(
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
    return session.db.count<Maintenancetype>(
      where: where?.call(Maintenancetype.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
