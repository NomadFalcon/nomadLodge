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

abstract class UserDevice extends _i1.TableRow {
  UserDevice._({
    int? id,
    required this.toke,
    required this.plaform,
    required this.osVersion,
    this.deviceInfo,
    required this.userId,
    this.user,
  }) : super(id);

  factory UserDevice({
    int? id,
    required String toke,
    required String plaform,
    required String osVersion,
    String? deviceInfo,
    required int userId,
    _i2.User? user,
  }) = _UserDeviceImpl;

  factory UserDevice.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return UserDevice(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      toke: serializationManager.deserialize<String>(jsonSerialization['toke']),
      plaform: serializationManager
          .deserialize<String>(jsonSerialization['plaform']),
      osVersion: serializationManager
          .deserialize<String>(jsonSerialization['osVersion']),
      deviceInfo: serializationManager
          .deserialize<String?>(jsonSerialization['deviceInfo']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['user']),
    );
  }

  static final t = UserDeviceTable();

  static const db = UserDeviceRepository._();

  String toke;

  String plaform;

  String osVersion;

  String? deviceInfo;

  int userId;

  _i2.User? user;

  int? _userDevicesUserId;

  @override
  _i1.Table get table => t;

  UserDevice copyWith({
    int? id,
    String? toke,
    String? plaform,
    String? osVersion,
    String? deviceInfo,
    int? userId,
    _i2.User? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'toke': toke,
      'plaform': plaform,
      'osVersion': osVersion,
      if (deviceInfo != null) 'deviceInfo': deviceInfo,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'toke': toke,
      'plaform': plaform,
      'osVersion': osVersion,
      'deviceInfo': deviceInfo,
      'userId': userId,
      '_userDevicesUserId': _userDevicesUserId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'toke': toke,
      'plaform': plaform,
      'osVersion': osVersion,
      if (deviceInfo != null) 'deviceInfo': deviceInfo,
      'userId': userId,
      if (user != null) 'user': user?.allToJson(),
      if (_userDevicesUserId != null) '_userDevicesUserId': _userDevicesUserId,
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
      case 'toke':
        toke = value;
        return;
      case 'plaform':
        plaform = value;
        return;
      case 'osVersion':
        osVersion = value;
        return;
      case 'deviceInfo':
        deviceInfo = value;
        return;
      case 'userId':
        userId = value;
        return;
      case '_userDevicesUserId':
        _userDevicesUserId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<UserDevice>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserDeviceTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    UserDeviceInclude? include,
  }) async {
    return session.db.find<UserDevice>(
      where: where != null ? where(UserDevice.t) : null,
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
  static Future<UserDevice?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserDeviceTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    UserDeviceInclude? include,
  }) async {
    return session.db.findSingleRow<UserDevice>(
      where: where != null ? where(UserDevice.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<UserDevice?> findById(
    _i1.Session session,
    int id, {
    UserDeviceInclude? include,
  }) async {
    return session.db.findById<UserDevice>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserDeviceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserDevice>(
      where: where(UserDevice.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    UserDevice row, {
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
    UserDevice row, {
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
    UserDevice row, {
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
    _i1.WhereExpressionBuilder<UserDeviceTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserDevice>(
      where: where != null ? where(UserDevice.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static UserDeviceInclude include({_i2.UserInclude? user}) {
    return UserDeviceInclude._(user: user);
  }

  static UserDeviceIncludeList includeList({
    _i1.WhereExpressionBuilder<UserDeviceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserDeviceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserDeviceTable>? orderByList,
    UserDeviceInclude? include,
  }) {
    return UserDeviceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserDevice.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserDevice.t),
      include: include,
    );
  }
}

class _Undefined {}

class _UserDeviceImpl extends UserDevice {
  _UserDeviceImpl({
    int? id,
    required String toke,
    required String plaform,
    required String osVersion,
    String? deviceInfo,
    required int userId,
    _i2.User? user,
  }) : super._(
          id: id,
          toke: toke,
          plaform: plaform,
          osVersion: osVersion,
          deviceInfo: deviceInfo,
          userId: userId,
          user: user,
        );

  @override
  UserDevice copyWith({
    Object? id = _Undefined,
    String? toke,
    String? plaform,
    String? osVersion,
    Object? deviceInfo = _Undefined,
    int? userId,
    Object? user = _Undefined,
  }) {
    return UserDevice(
      id: id is int? ? id : this.id,
      toke: toke ?? this.toke,
      plaform: plaform ?? this.plaform,
      osVersion: osVersion ?? this.osVersion,
      deviceInfo: deviceInfo is String? ? deviceInfo : this.deviceInfo,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
    );
  }
}

class UserDeviceImplicit extends _UserDeviceImpl {
  UserDeviceImplicit._({
    int? id,
    required String toke,
    required String plaform,
    required String osVersion,
    String? deviceInfo,
    required int userId,
    _i2.User? user,
    this.$_userDevicesUserId,
  }) : super(
          id: id,
          toke: toke,
          plaform: plaform,
          osVersion: osVersion,
          deviceInfo: deviceInfo,
          userId: userId,
          user: user,
        );

  factory UserDeviceImplicit(
    UserDevice userDevice, {
    int? $_userDevicesUserId,
  }) {
    return UserDeviceImplicit._(
      id: userDevice.id,
      toke: userDevice.toke,
      plaform: userDevice.plaform,
      osVersion: userDevice.osVersion,
      deviceInfo: userDevice.deviceInfo,
      userId: userDevice.userId,
      user: userDevice.user,
      $_userDevicesUserId: $_userDevicesUserId,
    );
  }

  int? $_userDevicesUserId;

  @override
  Map<String, dynamic> allToJson() {
    var jsonMap = super.allToJson();
    jsonMap.addAll({'_userDevicesUserId': $_userDevicesUserId});
    return jsonMap;
  }
}

class UserDeviceTable extends _i1.Table {
  UserDeviceTable({super.tableRelation}) : super(tableName: 'user_device') {
    toke = _i1.ColumnString(
      'toke',
      this,
    );
    plaform = _i1.ColumnString(
      'plaform',
      this,
    );
    osVersion = _i1.ColumnString(
      'osVersion',
      this,
    );
    deviceInfo = _i1.ColumnString(
      'deviceInfo',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    $_userDevicesUserId = _i1.ColumnInt(
      '_userDevicesUserId',
      this,
    );
  }

  late final _i1.ColumnString toke;

  late final _i1.ColumnString plaform;

  late final _i1.ColumnString osVersion;

  late final _i1.ColumnString deviceInfo;

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  late final _i1.ColumnInt $_userDevicesUserId;

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: UserDevice.t.userId,
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
        toke,
        plaform,
        osVersion,
        deviceInfo,
        userId,
        $_userDevicesUserId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

@Deprecated('Use UserDeviceTable.t instead.')
UserDeviceTable tUserDevice = UserDeviceTable();

class UserDeviceInclude extends _i1.IncludeObject {
  UserDeviceInclude._({_i2.UserInclude? user}) {
    _user = user;
  }

  _i2.UserInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {'user': _user};

  @override
  _i1.Table get table => UserDevice.t;
}

class UserDeviceIncludeList extends _i1.IncludeList {
  UserDeviceIncludeList._({
    _i1.WhereExpressionBuilder<UserDeviceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserDevice.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => UserDevice.t;
}

class UserDeviceRepository {
  const UserDeviceRepository._();

  final attachRow = const UserDeviceAttachRowRepository._();

  Future<List<UserDevice>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserDeviceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserDeviceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserDeviceTable>? orderByList,
    _i1.Transaction? transaction,
    UserDeviceInclude? include,
  }) async {
    return session.dbNext.find<UserDevice>(
      where: where?.call(UserDevice.t),
      orderBy: orderBy?.call(UserDevice.t),
      orderByList: orderByList?.call(UserDevice.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UserDevice?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserDeviceTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserDeviceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserDeviceTable>? orderByList,
    _i1.Transaction? transaction,
    UserDeviceInclude? include,
  }) async {
    return session.dbNext.findFirstRow<UserDevice>(
      where: where?.call(UserDevice.t),
      orderBy: orderBy?.call(UserDevice.t),
      orderByList: orderByList?.call(UserDevice.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UserDevice?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    UserDeviceInclude? include,
  }) async {
    return session.dbNext.findById<UserDevice>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<UserDevice>> insert(
    _i1.Session session,
    List<UserDevice> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<UserDevice>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserDevice> insertRow(
    _i1.Session session,
    UserDevice row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<UserDevice>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserDevice>> update(
    _i1.Session session,
    List<UserDevice> rows, {
    _i1.ColumnSelections<UserDeviceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<UserDevice>(
      rows,
      columns: columns?.call(UserDevice.t),
      transaction: transaction,
    );
  }

  Future<UserDevice> updateRow(
    _i1.Session session,
    UserDevice row, {
    _i1.ColumnSelections<UserDeviceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<UserDevice>(
      row,
      columns: columns?.call(UserDevice.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<UserDevice> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<UserDevice>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    UserDevice row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<UserDevice>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserDeviceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<UserDevice>(
      where: where(UserDevice.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserDeviceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<UserDevice>(
      where: where?.call(UserDevice.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class UserDeviceAttachRowRepository {
  const UserDeviceAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    UserDevice userDevice,
    _i2.User user,
  ) async {
    if (userDevice.id == null) {
      throw ArgumentError.notNull('userDevice.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $userDevice = userDevice.copyWith(userId: user.id);
    await session.dbNext.updateRow<UserDevice>(
      $userDevice,
      columns: [UserDevice.t.userId],
    );
  }
}
