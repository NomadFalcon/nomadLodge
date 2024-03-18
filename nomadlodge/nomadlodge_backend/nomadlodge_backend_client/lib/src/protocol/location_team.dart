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

abstract class LocationTeam extends _i1.SerializableEntity {
  LocationTeam._({
    this.id,
    required this.name,
    required this.description,
    this.users,
    required this.locationId,
    this.location,
  });

  factory LocationTeam({
    int? id,
    required String name,
    required String description,
    List<_i2.User>? users,
    required int locationId,
    _i2.Location? location,
  }) = _LocationTeamImpl;

  factory LocationTeam.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return LocationTeam(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      users: serializationManager
          .deserialize<List<_i2.User>?>(jsonSerialization['users']),
      locationId: serializationManager
          .deserialize<int>(jsonSerialization['locationId']),
      location: serializationManager
          .deserialize<_i2.Location?>(jsonSerialization['location']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String description;

  List<_i2.User>? users;

  int locationId;

  _i2.Location? location;

  LocationTeam copyWith({
    int? id,
    String? name,
    String? description,
    List<_i2.User>? users,
    int? locationId,
    _i2.Location? location,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      if (users != null) 'users': users?.toJson(valueToJson: (v) => v.toJson()),
      'locationId': locationId,
      if (location != null) 'location': location?.toJson(),
    };
  }
}

class _Undefined {}

class _LocationTeamImpl extends LocationTeam {
  _LocationTeamImpl({
    int? id,
    required String name,
    required String description,
    List<_i2.User>? users,
    required int locationId,
    _i2.Location? location,
  }) : super._(
          id: id,
          name: name,
          description: description,
          users: users,
          locationId: locationId,
          location: location,
        );

  @override
  LocationTeam copyWith({
    Object? id = _Undefined,
    String? name,
    String? description,
    Object? users = _Undefined,
    int? locationId,
    Object? location = _Undefined,
  }) {
    return LocationTeam(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      users: users is List<_i2.User>? ? users : this.users?.clone(),
      locationId: locationId ?? this.locationId,
      location:
          location is _i2.Location? ? location : this.location?.copyWith(),
    );
  }
}
