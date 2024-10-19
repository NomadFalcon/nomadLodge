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

abstract class UserInvitation
    implements _i1.TableRow, _i1.ProtocolSerialization {
  UserInvitation._({
    this.id,
    required this.code,
    required this.email,
    required this.url,
    bool? hasBeenUsed,
    required this.userId,
    this.user,
  }) : hasBeenUsed = hasBeenUsed ?? false;

  factory UserInvitation({
    int? id,
    required String code,
    required String email,
    required String url,
    bool? hasBeenUsed,
    required int userId,
    _i2.User? user,
  }) = _UserInvitationImpl;

  factory UserInvitation.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserInvitation(
      id: jsonSerialization['id'] as int?,
      code: jsonSerialization['code'] as String,
      email: jsonSerialization['email'] as String,
      url: jsonSerialization['url'] as String,
      hasBeenUsed: jsonSerialization['hasBeenUsed'] as bool,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
    );
  }

  static final t = UserInvitationTable();

  static const db = UserInvitationRepository._();

  @override
  int? id;

  String code;

  String email;

  String url;

  bool hasBeenUsed;

  int userId;

  _i2.User? user;

  @override
  _i1.Table get table => t;

  UserInvitation copyWith({
    int? id,
    String? code,
    String? email,
    String? url,
    bool? hasBeenUsed,
    int? userId,
    _i2.User? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'code': code,
      'email': email,
      'url': url,
      'hasBeenUsed': hasBeenUsed,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'code': code,
      'email': email,
      'url': url,
      'hasBeenUsed': hasBeenUsed,
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
    };
  }

  static UserInvitationInclude include({_i2.UserInclude? user}) {
    return UserInvitationInclude._(user: user);
  }

  static UserInvitationIncludeList includeList({
    _i1.WhereExpressionBuilder<UserInvitationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserInvitationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserInvitationTable>? orderByList,
    UserInvitationInclude? include,
  }) {
    return UserInvitationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserInvitation.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserInvitation.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserInvitationImpl extends UserInvitation {
  _UserInvitationImpl({
    int? id,
    required String code,
    required String email,
    required String url,
    bool? hasBeenUsed,
    required int userId,
    _i2.User? user,
  }) : super._(
          id: id,
          code: code,
          email: email,
          url: url,
          hasBeenUsed: hasBeenUsed,
          userId: userId,
          user: user,
        );

  @override
  UserInvitation copyWith({
    Object? id = _Undefined,
    String? code,
    String? email,
    String? url,
    bool? hasBeenUsed,
    int? userId,
    Object? user = _Undefined,
  }) {
    return UserInvitation(
      id: id is int? ? id : this.id,
      code: code ?? this.code,
      email: email ?? this.email,
      url: url ?? this.url,
      hasBeenUsed: hasBeenUsed ?? this.hasBeenUsed,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
    );
  }
}

class UserInvitationTable extends _i1.Table {
  UserInvitationTable({super.tableRelation})
      : super(tableName: 'user_invitation') {
    code = _i1.ColumnString(
      'code',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    url = _i1.ColumnString(
      'url',
      this,
    );
    hasBeenUsed = _i1.ColumnBool(
      'hasBeenUsed',
      this,
      hasDefault: true,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final _i1.ColumnString code;

  late final _i1.ColumnString email;

  late final _i1.ColumnString url;

  late final _i1.ColumnBool hasBeenUsed;

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: UserInvitation.t.userId,
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
        code,
        email,
        url,
        hasBeenUsed,
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

class UserInvitationInclude extends _i1.IncludeObject {
  UserInvitationInclude._({_i2.UserInclude? user}) {
    _user = user;
  }

  _i2.UserInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {'user': _user};

  @override
  _i1.Table get table => UserInvitation.t;
}

class UserInvitationIncludeList extends _i1.IncludeList {
  UserInvitationIncludeList._({
    _i1.WhereExpressionBuilder<UserInvitationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserInvitation.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => UserInvitation.t;
}

class UserInvitationRepository {
  const UserInvitationRepository._();

  final attachRow = const UserInvitationAttachRowRepository._();

  Future<List<UserInvitation>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<UserInvitationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserInvitationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserInvitationTable>? orderByList,
    _i1.Transaction? transaction,
    UserInvitationInclude? include,
  }) async {
    return databaseAccessor.db.find<UserInvitation>(
      where: where?.call(UserInvitation.t),
      orderBy: orderBy?.call(UserInvitation.t),
      orderByList: orderByList?.call(UserInvitation.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<UserInvitation?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<UserInvitationTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserInvitationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserInvitationTable>? orderByList,
    _i1.Transaction? transaction,
    UserInvitationInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<UserInvitation>(
      where: where?.call(UserInvitation.t),
      orderBy: orderBy?.call(UserInvitation.t),
      orderByList: orderByList?.call(UserInvitation.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<UserInvitation?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    UserInvitationInclude? include,
  }) async {
    return databaseAccessor.db.findById<UserInvitation>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<List<UserInvitation>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<UserInvitation> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<UserInvitation>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<UserInvitation> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    UserInvitation row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<UserInvitation>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<UserInvitation>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<UserInvitation> rows, {
    _i1.ColumnSelections<UserInvitationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<UserInvitation>(
      rows,
      columns: columns?.call(UserInvitation.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<UserInvitation> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    UserInvitation row, {
    _i1.ColumnSelections<UserInvitationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<UserInvitation>(
      row,
      columns: columns?.call(UserInvitation.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<UserInvitation>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<UserInvitation> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<UserInvitation>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<UserInvitation> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    UserInvitation row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<UserInvitation>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<UserInvitation>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<UserInvitationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<UserInvitation>(
      where: where(UserInvitation.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<UserInvitationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<UserInvitation>(
      where: where?.call(UserInvitation.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class UserInvitationAttachRowRepository {
  const UserInvitationAttachRowRepository._();

  Future<void> user(
    _i1.DatabaseAccessor databaseAccessor,
    UserInvitation userInvitation,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (userInvitation.id == null) {
      throw ArgumentError.notNull('userInvitation.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $userInvitation = userInvitation.copyWith(userId: user.id);
    await databaseAccessor.db.updateRow<UserInvitation>(
      $userInvitation,
      columns: [UserInvitation.t.userId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
