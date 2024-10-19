/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class UserDevice implements _i1.SerializableModel {
  UserDevice._({
    this.id,
    required this.token,
    required this.plaform,
    required this.osVersion,
    this.deviceInfo,
    required this.userId,
    this.user,
  });

  factory UserDevice({
    int? id,
    required String token,
    required String plaform,
    required String osVersion,
    String? deviceInfo,
    required int userId,
    _i2.User? user,
  }) = _UserDeviceImpl;

  factory UserDevice.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserDevice(
      id: jsonSerialization['id'] as int?,
      token: jsonSerialization['token'] as String,
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String token;

  String plaform;

  String osVersion;

  String? deviceInfo;

  int userId;

  _i2.User? user;

  UserDevice copyWith({
    int? id,
    String? token,
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
      'token': token,
      'plaform': plaform,
      'osVersion': osVersion,
      if (deviceInfo != null) 'deviceInfo': deviceInfo,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
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
    required String token,
    required String plaform,
    required String osVersion,
    String? deviceInfo,
    required int userId,
    _i2.User? user,
  }) : super._(
          id: id,
          token: token,
          plaform: plaform,
          osVersion: osVersion,
          deviceInfo: deviceInfo,
          userId: userId,
          user: user,
        );

  @override
  UserDevice copyWith({
    Object? id = _Undefined,
    String? token,
    String? plaform,
    String? osVersion,
    Object? deviceInfo = _Undefined,
    int? userId,
    Object? user = _Undefined,
  }) {
    return UserDevice(
      id: id is int? ? id : this.id,
      token: token ?? this.token,
      plaform: plaform ?? this.plaform,
      osVersion: osVersion ?? this.osVersion,
      deviceInfo: deviceInfo is String? ? deviceInfo : this.deviceInfo,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
    );
  }
}
