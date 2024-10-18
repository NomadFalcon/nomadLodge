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

abstract class User implements _i1.SerializableModel {
  User._({
    this.id,
    required this.name,
    required this.email,
    this.authUserIdentifier,
    this.externalId,
    this.phone,
    this.country,
    required this.userType,
    this.devices,
  });

  factory User({
    int? id,
    required String name,
    required String email,
    String? authUserIdentifier,
    String? externalId,
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
      authUserIdentifier: jsonSerialization['authUserIdentifier'] as String?,
      externalId: jsonSerialization['externalId'] as String?,
      phone: jsonSerialization['phone'] as String?,
      country: jsonSerialization['country'] as String?,
      userType:
          _i2.UserType.fromJson((jsonSerialization['userType'] as String)),
      devices: (jsonSerialization['devices'] as List?)
          ?.map((e) => _i2.UserDevice.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String email;

  String? authUserIdentifier;

  String? externalId;

  String? phone;

  String? country;

  _i2.UserType userType;

  List<_i2.UserDevice>? devices;

  User copyWith({
    int? id,
    String? name,
    String? email,
    String? authUserIdentifier,
    String? externalId,
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
      if (authUserIdentifier != null) 'authUserIdentifier': authUserIdentifier,
      if (externalId != null) 'externalId': externalId,
      if (phone != null) 'phone': phone,
      if (country != null) 'country': country,
      'userType': userType.toJson(),
      if (devices != null)
        'devices': devices?.toJson(valueToJson: (v) => v.toJson()),
    };
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
    String? authUserIdentifier,
    String? externalId,
    String? phone,
    String? country,
    required _i2.UserType userType,
    List<_i2.UserDevice>? devices,
  }) : super._(
          id: id,
          name: name,
          email: email,
          authUserIdentifier: authUserIdentifier,
          externalId: externalId,
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
    Object? authUserIdentifier = _Undefined,
    Object? externalId = _Undefined,
    Object? phone = _Undefined,
    Object? country = _Undefined,
    _i2.UserType? userType,
    Object? devices = _Undefined,
  }) {
    return User(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      authUserIdentifier: authUserIdentifier is String?
          ? authUserIdentifier
          : this.authUserIdentifier,
      externalId: externalId is String? ? externalId : this.externalId,
      phone: phone is String? ? phone : this.phone,
      country: country is String? ? country : this.country,
      userType: userType ?? this.userType,
      devices: devices is List<_i2.UserDevice>?
          ? devices
          : this.devices?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
