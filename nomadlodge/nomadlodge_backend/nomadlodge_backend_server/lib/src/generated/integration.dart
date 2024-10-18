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
import 'protocol.dart' as _i2;

abstract class Integration implements _i1.TableRow, _i1.ProtocolSerialization {
  Integration._({
    this.id,
    required this.apiKey,
    required this.integrationType,
    this.lastReloadDate,
    required this.userId,
    this.user,
  });

  factory Integration({
    int? id,
    required String apiKey,
    required _i2.IntegrationType integrationType,
    DateTime? lastReloadDate,
    required int userId,
    _i2.User? user,
  }) = _IntegrationImpl;

  factory Integration.fromJson(Map<String, dynamic> jsonSerialization) {
    return Integration(
      id: jsonSerialization['id'] as int?,
      apiKey: jsonSerialization['apiKey'] as String,
      integrationType: _i2.IntegrationType.fromJson(
          (jsonSerialization['integrationType'] as String)),
      lastReloadDate: jsonSerialization['lastReloadDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastReloadDate']),
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
    );
  }

  static final t = IntegrationTable();

  static const db = IntegrationRepository._();

  @override
  int? id;

  String apiKey;

  _i2.IntegrationType integrationType;

  DateTime? lastReloadDate;

  int userId;

  _i2.User? user;

  @override
  _i1.Table get table => t;

  Integration copyWith({
    int? id,
    String? apiKey,
    _i2.IntegrationType? integrationType,
    DateTime? lastReloadDate,
    int? userId,
    _i2.User? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'apiKey': apiKey,
      'integrationType': integrationType.toJson(),
      if (lastReloadDate != null) 'lastReloadDate': lastReloadDate?.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'apiKey': apiKey,
      'integrationType': integrationType.toJson(),
      if (lastReloadDate != null) 'lastReloadDate': lastReloadDate?.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
    };
  }

  static IntegrationInclude include({_i2.UserInclude? user}) {
    return IntegrationInclude._(user: user);
  }

  static IntegrationIncludeList includeList({
    _i1.WhereExpressionBuilder<IntegrationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<IntegrationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<IntegrationTable>? orderByList,
    IntegrationInclude? include,
  }) {
    return IntegrationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Integration.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Integration.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _IntegrationImpl extends Integration {
  _IntegrationImpl({
    int? id,
    required String apiKey,
    required _i2.IntegrationType integrationType,
    DateTime? lastReloadDate,
    required int userId,
    _i2.User? user,
  }) : super._(
          id: id,
          apiKey: apiKey,
          integrationType: integrationType,
          lastReloadDate: lastReloadDate,
          userId: userId,
          user: user,
        );

  @override
  Integration copyWith({
    Object? id = _Undefined,
    String? apiKey,
    _i2.IntegrationType? integrationType,
    Object? lastReloadDate = _Undefined,
    int? userId,
    Object? user = _Undefined,
  }) {
    return Integration(
      id: id is int? ? id : this.id,
      apiKey: apiKey ?? this.apiKey,
      integrationType: integrationType ?? this.integrationType,
      lastReloadDate:
          lastReloadDate is DateTime? ? lastReloadDate : this.lastReloadDate,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
    );
  }
}

class IntegrationTable extends _i1.Table {
  IntegrationTable({super.tableRelation}) : super(tableName: 'integration') {
    apiKey = _i1.ColumnString(
      'apiKey',
      this,
    );
    integrationType = _i1.ColumnEnum(
      'integrationType',
      this,
      _i1.EnumSerialization.byName,
    );
    lastReloadDate = _i1.ColumnDateTime(
      'lastReloadDate',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final _i1.ColumnString apiKey;

  late final _i1.ColumnEnum<_i2.IntegrationType> integrationType;

  late final _i1.ColumnDateTime lastReloadDate;

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Integration.t.userId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        apiKey,
        integrationType,
        lastReloadDate,
        userId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class IntegrationInclude extends _i1.IncludeObject {
  IntegrationInclude._({_i2.UserInclude? user}) {
    _user = user;
  }

  _i2.UserInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {'user': _user};

  @override
  _i1.Table get table => Integration.t;
}

class IntegrationIncludeList extends _i1.IncludeList {
  IntegrationIncludeList._({
    _i1.WhereExpressionBuilder<IntegrationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Integration.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Integration.t;
}

class IntegrationRepository {
  const IntegrationRepository._();

  final attachRow = const IntegrationAttachRowRepository._();

  Future<List<Integration>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<IntegrationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<IntegrationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<IntegrationTable>? orderByList,
    _i1.Transaction? transaction,
    IntegrationInclude? include,
  }) async {
    return databaseAccessor.db.find<Integration>(
      where: where?.call(Integration.t),
      orderBy: orderBy?.call(Integration.t),
      orderByList: orderByList?.call(Integration.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Integration?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<IntegrationTable>? where,
    int? offset,
    _i1.OrderByBuilder<IntegrationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<IntegrationTable>? orderByList,
    _i1.Transaction? transaction,
    IntegrationInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<Integration>(
      where: where?.call(Integration.t),
      orderBy: orderBy?.call(Integration.t),
      orderByList: orderByList?.call(Integration.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Integration?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    IntegrationInclude? include,
  }) async {
    return databaseAccessor.db.findById<Integration>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<List<Integration>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Integration> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Integration>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Integration> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Integration row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Integration>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Integration>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Integration> rows, {
    _i1.ColumnSelections<IntegrationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Integration>(
      rows,
      columns: columns?.call(Integration.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Integration> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Integration row, {
    _i1.ColumnSelections<IntegrationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Integration>(
      row,
      columns: columns?.call(Integration.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Integration>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Integration> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Integration>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Integration> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Integration row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Integration>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Integration>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<IntegrationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Integration>(
      where: where(Integration.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<IntegrationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Integration>(
      where: where?.call(Integration.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class IntegrationAttachRowRepository {
  const IntegrationAttachRowRepository._();

  Future<void> user(
    _i1.DatabaseAccessor databaseAccessor,
    Integration integration,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (integration.id == null) {
      throw ArgumentError.notNull('integration.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $integration = integration.copyWith(userId: user.id);
    await databaseAccessor.db.updateRow<Integration>(
      $integration,
      columns: [Integration.t.userId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
