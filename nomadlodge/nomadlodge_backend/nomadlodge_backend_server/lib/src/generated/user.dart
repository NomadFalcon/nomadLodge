/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class User extends _i1.TableRow {
  User._({
    int? id,
    required this.name,
    required this.email,
    this.phone,
    this.country,
    required this.userType,
    this.devices,
  }) : super(id);

  factory User({
    int? id,
    required String name,
    required String email,
    String? phone,
    String? country,
    required _i2.UserType userType,
    List<_i2.UserDevice>? devices,
  }) = _UserImpl;

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
      phone:
          serializationManager.deserialize<String?>(jsonSerialization['phone']),
      country: serializationManager
          .deserialize<String?>(jsonSerialization['country']),
      userType: serializationManager
          .deserialize<_i2.UserType>(jsonSerialization['userType']),
      devices: serializationManager
          .deserialize<List<_i2.UserDevice>?>(jsonSerialization['devices']),
    );
  }

  static final t = UserTable();

  static const db = UserRepository._();

  String name;

  String email;

  String? phone;

  String? country;

  _i2.UserType userType;

  List<_i2.UserDevice>? devices;

  @override
  _i1.Table get table => t;

  User copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? country,
    _i2.UserType? userType,
    List<_i2.UserDevice>? devices,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'email': email,
      if (phone != null) 'phone': phone,
      if (country != null) 'country': country,
      'userType': userType.toJson(),
      if (devices != null)
        'devices': devices?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'country': country,
      'userType': userType,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'email': email,
      if (phone != null) 'phone': phone,
      if (country != null) 'country': country,
      'userType': userType.toJson(),
      if (devices != null)
        'devices': devices?.toJson(valueToJson: (v) => v.allToJson()),
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
      case 'email':
        email = value;
        return;
      case 'phone':
        phone = value;
        return;
      case 'country':
        country = value;
        return;
      case 'userType':
        userType = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<User>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.db.find<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<User?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.db.findSingleRow<User>(
      where: where != null ? where(User.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<User?> findById(
    _i1.Session session,
    int id, {
    UserInclude? include,
  }) async {
    return session.db.findById<User>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    User row, {
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
    User row, {
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
    User row, {
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
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static UserInclude include({_i2.UserDeviceIncludeList? devices}) {
    return UserInclude._(devices: devices);
  }

  static UserIncludeList includeList({
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    UserInclude? include,
  }) {
    return UserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(User.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(User.t),
      include: include,
    );
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required String name,
    required String email,
    String? phone,
    String? country,
    required _i2.UserType userType,
    List<_i2.UserDevice>? devices,
  }) : super._(
          id: id,
          name: name,
          email: email,
          phone: phone,
          country: country,
          userType: userType,
          devices: devices,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    String? name,
    String? email,
    Object? phone = _Undefined,
    Object? country = _Undefined,
    _i2.UserType? userType,
    Object? devices = _Undefined,
  }) {
    return User(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone is String? ? phone : this.phone,
      country: country is String? ? country : this.country,
      userType: userType ?? this.userType,
      devices:
          devices is List<_i2.UserDevice>? ? devices : this.devices?.clone(),
    );
  }
}

class UserTable extends _i1.Table {
  UserTable({super.tableRelation}) : super(tableName: 'user') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    phone = _i1.ColumnString(
      'phone',
      this,
    );
    country = _i1.ColumnString(
      'country',
      this,
    );
    userType = _i1.ColumnEnum(
      'userType',
      this,
      _i1.EnumSerialization.byName,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString email;

  late final _i1.ColumnString phone;

  late final _i1.ColumnString country;

  late final _i1.ColumnEnum<_i2.UserType> userType;

  _i2.UserDeviceTable? ___devices;

  _i1.ManyRelation<_i2.UserDeviceTable>? _devices;

  _i2.UserDeviceTable get __devices {
    if (___devices != null) return ___devices!;
    ___devices = _i1.createRelationTable(
      relationFieldName: '__devices',
      field: User.t.id,
      foreignField: _i2.UserDevice.t.$_userDevicesUserId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserDeviceTable(tableRelation: foreignTableRelation),
    );
    return ___devices!;
  }

  _i1.ManyRelation<_i2.UserDeviceTable> get devices {
    if (_devices != null) return _devices!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'devices',
      field: User.t.id,
      foreignField: _i2.UserDevice.t.$_userDevicesUserId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserDeviceTable(tableRelation: foreignTableRelation),
    );
    _devices = _i1.ManyRelation<_i2.UserDeviceTable>(
      tableWithRelations: relationTable,
      table: _i2.UserDeviceTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _devices!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        email,
        phone,
        country,
        userType,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'devices') {
      return __devices;
    }
    return null;
  }
}

@Deprecated('Use UserTable.t instead.')
UserTable tUser = UserTable();

class UserInclude extends _i1.IncludeObject {
  UserInclude._({_i2.UserDeviceIncludeList? devices}) {
    _devices = devices;
  }

  _i2.UserDeviceIncludeList? _devices;

  @override
  Map<String, _i1.Include?> get includes => {'devices': _devices};

  @override
  _i1.Table get table => User.t;
}

class UserIncludeList extends _i1.IncludeList {
  UserIncludeList._({
    _i1.WhereExpressionBuilder<UserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(User.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => User.t;
}

class UserRepository {
  const UserRepository._();

  final attach = const UserAttachRepository._();

  final attachRow = const UserAttachRowRepository._();

  final detach = const UserDetachRepository._();

  final detachRow = const UserDetachRowRepository._();

  Future<List<User>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.dbNext.find<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<User?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.dbNext.findFirstRow<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<User?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.dbNext.findById<User>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<User>> insert(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<User>(
      rows,
      transaction: transaction,
    );
  }

  Future<User> insertRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<User>(
      row,
      transaction: transaction,
    );
  }

  Future<List<User>> update(
    _i1.Session session,
    List<User> rows, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<User>(
      rows,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  Future<User> updateRow(
    _i1.Session session,
    User row, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<User>(
      row,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<User>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<User>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<User>(
      where: where?.call(User.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class UserAttachRepository {
  const UserAttachRepository._();

  Future<void> devices(
    _i1.Session session,
    User user,
    List<_i2.UserDevice> userDevice,
  ) async {
    if (userDevice.any((e) => e.id == null)) {
      throw ArgumentError.notNull('userDevice.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $userDevice = userDevice
        .map((e) => _i2.UserDeviceImplicit(
              e,
              $_userDevicesUserId: user.id,
            ))
        .toList();
    await session.dbNext.update<_i2.UserDevice>(
      $userDevice,
      columns: [_i2.UserDevice.t.$_userDevicesUserId],
    );
  }
}

class UserAttachRowRepository {
  const UserAttachRowRepository._();

  Future<void> devices(
    _i1.Session session,
    User user,
    _i2.UserDevice userDevice,
  ) async {
    if (userDevice.id == null) {
      throw ArgumentError.notNull('userDevice.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $userDevice = _i2.UserDeviceImplicit(
      userDevice,
      $_userDevicesUserId: user.id,
    );
    await session.dbNext.updateRow<_i2.UserDevice>(
      $userDevice,
      columns: [_i2.UserDevice.t.$_userDevicesUserId],
    );
  }
}

class UserDetachRepository {
  const UserDetachRepository._();

  Future<void> devices(
    _i1.Session session,
    List<_i2.UserDevice> userDevice,
  ) async {
    if (userDevice.any((e) => e.id == null)) {
      throw ArgumentError.notNull('userDevice.id');
    }

    var $userDevice = userDevice
        .map((e) => _i2.UserDeviceImplicit(
              e,
              $_userDevicesUserId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.UserDevice>(
      $userDevice,
      columns: [_i2.UserDevice.t.$_userDevicesUserId],
    );
  }
}

class UserDetachRowRepository {
  const UserDetachRowRepository._();

  Future<void> devices(
    _i1.Session session,
    _i2.UserDevice userDevice,
  ) async {
    if (userDevice.id == null) {
      throw ArgumentError.notNull('userDevice.id');
    }

    var $userDevice = _i2.UserDeviceImplicit(
      userDevice,
      $_userDevicesUserId: null,
    );
    await session.dbNext.updateRow<_i2.UserDevice>(
      $userDevice,
      columns: [_i2.UserDevice.t.$_userDevicesUserId],
    );
  }
}
