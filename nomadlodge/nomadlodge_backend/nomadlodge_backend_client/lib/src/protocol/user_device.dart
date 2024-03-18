/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class UserDevice extends _i1.SerializableEntity {
  UserDevice._({
    this.id,
    required this.toke,
    required this.plaform,
    required this.osVersion,
    this.deviceInfo,
    required this.userId,
    this.user,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String toke;

  String plaform;

  String osVersion;

  String? deviceInfo;

  int userId;

  _i2.User? user;

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
