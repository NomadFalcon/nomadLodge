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

abstract class UserInvitation implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String code;

  String email;

  String url;

  bool hasBeenUsed;

  int userId;

  _i2.User? user;

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
