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

abstract class User implements _i1.TableRow, _i1.ProtocolSerialization {
  User._({
    this.id,
    required this.name,
    required this.email,
    this.phone,
    this.country,
    required this.userType,
    this.devices,
  });

  factory User({
    int? id,
    required String name,
    required String email,
    String? phone,
    String? country,
    required _i2.UserType userType,
    List<_i2.UserDevice>? devices,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String,
      phone: jsonSerialization['phone'] as String?,
      country: jsonSerialization['country'] as String?,
      userType:
          _i2.UserType.fromJson((jsonSerialization['userType'] as String)),
      devices: (jsonSerialization['devices'] as List?)
          ?.map((e) => _i2.UserDevice.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = UserTable();

  static const db = UserRepository._();

  @override
  int? id;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'email': email,
      if (phone != null) 'phone': phone,
      if (country != null) 'country': country,
      'userType': userType.toJson(),
      if (devices != null)
        'devices': devices?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
      devices: devices is List<_i2.UserDevice>?
          ? devices
          : this.devices?.map((e0) => e0.copyWith()).toList(),
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
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return databaseAccessor.db.find<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<User?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<User?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return databaseAccessor.db.findById<User>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<List<User>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<User>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<User> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<User>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<User>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<User> rows, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<User>(
      rows,
      columns: columns?.call(User.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<User> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    User row, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<User>(
      row,
      columns: columns?.call(User.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<User>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<User>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<User> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<User>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<User>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<UserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<User>(
      where: where(User.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<User>(
      where: where?.call(User.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class UserAttachRepository {
  const UserAttachRepository._();

  Future<void> devices(
    _i1.DatabaseAccessor databaseAccessor,
    User user,
    List<_i2.UserDevice> userDevice, {
    _i1.Transaction? transaction,
  }) async {
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
    await databaseAccessor.db.update<_i2.UserDevice>(
      $userDevice,
      columns: [_i2.UserDevice.t.$_userDevicesUserId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class UserAttachRowRepository {
  const UserAttachRowRepository._();

  Future<void> devices(
    _i1.DatabaseAccessor databaseAccessor,
    User user,
    _i2.UserDevice userDevice, {
    _i1.Transaction? transaction,
  }) async {
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
    await databaseAccessor.db.updateRow<_i2.UserDevice>(
      $userDevice,
      columns: [_i2.UserDevice.t.$_userDevicesUserId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class UserDetachRepository {
  const UserDetachRepository._();

  Future<void> devices(
    _i1.DatabaseAccessor databaseAccessor,
    List<_i2.UserDevice> userDevice, {
    _i1.Transaction? transaction,
  }) async {
    if (userDevice.any((e) => e.id == null)) {
      throw ArgumentError.notNull('userDevice.id');
    }

    var $userDevice = userDevice
        .map((e) => _i2.UserDeviceImplicit(
              e,
              $_userDevicesUserId: null,
            ))
        .toList();
    await databaseAccessor.db.update<_i2.UserDevice>(
      $userDevice,
      columns: [_i2.UserDevice.t.$_userDevicesUserId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class UserDetachRowRepository {
  const UserDetachRowRepository._();

  Future<void> devices(
    _i1.DatabaseAccessor databaseAccessor,
    _i2.UserDevice userDevice, {
    _i1.Transaction? transaction,
  }) async {
    if (userDevice.id == null) {
      throw ArgumentError.notNull('userDevice.id');
    }

    var $userDevice = _i2.UserDeviceImplicit(
      userDevice,
      $_userDevicesUserId: null,
    );
    await databaseAccessor.db.updateRow<_i2.UserDevice>(
      $userDevice,
      columns: [_i2.UserDevice.t.$_userDevicesUserId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
