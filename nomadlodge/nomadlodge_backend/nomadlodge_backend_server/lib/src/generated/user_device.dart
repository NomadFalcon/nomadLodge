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

abstract class UserDevice extends _i1.TableRow
    implements _i1.ProtocolSerialization {
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

  factory UserDevice.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserDevice(
      id: jsonSerialization['id'] as int?,
      toke: jsonSerialization['toke'] as String,
      plaform: jsonSerialization['plaform'] as String,
      osVersion: jsonSerialization['osVersion'] as String,
      deviceInfo: jsonSerialization['deviceInfo'] as String?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
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
      if (_userDevicesUserId != null) '_userDevicesUserId': _userDevicesUserId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'toke': toke,
      'plaform': plaform,
      'osVersion': osVersion,
      if (deviceInfo != null) 'deviceInfo': deviceInfo,
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
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
    return session.db.find<UserDevice>(
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
    return session.db.findFirstRow<UserDevice>(
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
    return session.db.findById<UserDevice>(
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
    return session.db.insert<UserDevice>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserDevice> insertRow(
    _i1.Session session,
    UserDevice row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserDevice>(
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
    return session.db.update<UserDevice>(
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
    return session.db.updateRow<UserDevice>(
      row,
      columns: columns?.call(UserDevice.t),
      transaction: transaction,
    );
  }

  Future<List<UserDevice>> delete(
    _i1.Session session,
    List<UserDevice> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserDevice>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserDevice> deleteRow(
    _i1.Session session,
    UserDevice row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserDevice>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserDevice>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserDeviceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<UserDevice>(
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
    return session.db.count<UserDevice>(
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
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (userDevice.id == null) {
      throw ArgumentError.notNull('userDevice.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $userDevice = userDevice.copyWith(userId: user.id);
    await session.db.updateRow<UserDevice>(
      $userDevice,
      columns: [UserDevice.t.userId],
      transaction: transaction,
    );
  }
}
