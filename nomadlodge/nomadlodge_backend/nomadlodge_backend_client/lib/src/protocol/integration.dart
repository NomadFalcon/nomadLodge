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

abstract class Integration implements _i1.SerializableModel {
  Integration._({
    this.id,
    required this.apiKey,
    required this.integrationType,
    required this.userId,
    this.user,
  });

  factory Integration({
    int? id,
    required String apiKey,
    required _i2.IntegrationType integrationType,
    required int userId,
    _i2.User? user,
  }) = _IntegrationImpl;

  factory Integration.fromJson(Map<String, dynamic> jsonSerialization) {
    return Integration(
      id: jsonSerialization['id'] as int?,
      apiKey: jsonSerialization['apiKey'] as String,
      integrationType: _i2.IntegrationType.fromJson(
          (jsonSerialization['integrationType'] as String)),
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

  String apiKey;

  _i2.IntegrationType integrationType;

  int userId;

  _i2.User? user;

  Integration copyWith({
    int? id,
    String? apiKey,
    _i2.IntegrationType? integrationType,
    int? userId,
    _i2.User? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'apiKey': apiKey,
      'integrationType': integrationType.toJson(),
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

class _IntegrationImpl extends Integration {
  _IntegrationImpl({
    int? id,
    required String apiKey,
    required _i2.IntegrationType integrationType,
    required int userId,
    _i2.User? user,
  }) : super._(
          id: id,
          apiKey: apiKey,
          integrationType: integrationType,
          userId: userId,
          user: user,
        );

  @override
  Integration copyWith({
    Object? id = _Undefined,
    String? apiKey,
    _i2.IntegrationType? integrationType,
    int? userId,
    Object? user = _Undefined,
  }) {
    return Integration(
      id: id is int? ? id : this.id,
      apiKey: apiKey ?? this.apiKey,
      integrationType: integrationType ?? this.integrationType,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
    );
  }
}
