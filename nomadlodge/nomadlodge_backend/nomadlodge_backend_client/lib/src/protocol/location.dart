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

abstract class Location extends _i1.SerializableEntity {
  Location._({
    this.id,
    required this.name,
    required this.longDescription,
    required this.shortDescription,
    this.website,
    required this.rooms,
    this.medias,
    required this.userId,
    this.user,
    required this.geoAddressId,
    this.geoAddress,
  });

  factory Location({
    int? id,
    required String name,
    required String longDescription,
    required String shortDescription,
    String? website,
    required int rooms,
    List<_i2.Media>? medias,
    required int userId,
    _i2.User? user,
    required int geoAddressId,
    _i2.GeoAddress? geoAddress,
  }) = _LocationImpl;

  factory Location.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Location(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      longDescription: serializationManager
          .deserialize<String>(jsonSerialization['longDescription']),
      shortDescription: serializationManager
          .deserialize<String>(jsonSerialization['shortDescription']),
      website: serializationManager
          .deserialize<String?>(jsonSerialization['website']),
      rooms: serializationManager.deserialize<int>(jsonSerialization['rooms']),
      medias: serializationManager
          .deserialize<List<_i2.Media>?>(jsonSerialization['medias']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['user']),
      geoAddressId: serializationManager
          .deserialize<int>(jsonSerialization['geoAddressId']),
      geoAddress: serializationManager
          .deserialize<_i2.GeoAddress?>(jsonSerialization['geoAddress']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String longDescription;

  String shortDescription;

  String? website;

  int rooms;

  List<_i2.Media>? medias;

  int userId;

  _i2.User? user;

  int geoAddressId;

  _i2.GeoAddress? geoAddress;

  Location copyWith({
    int? id,
    String? name,
    String? longDescription,
    String? shortDescription,
    String? website,
    int? rooms,
    List<_i2.Media>? medias,
    int? userId,
    _i2.User? user,
    int? geoAddressId,
    _i2.GeoAddress? geoAddress,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'longDescription': longDescription,
      'shortDescription': shortDescription,
      if (website != null) 'website': website,
      'rooms': rooms,
      if (medias != null)
        'medias': medias?.toJson(valueToJson: (v) => v.toJson()),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'geoAddressId': geoAddressId,
      if (geoAddress != null) 'geoAddress': geoAddress?.toJson(),
    };
  }
}

class _Undefined {}

class _LocationImpl extends Location {
  _LocationImpl({
    int? id,
    required String name,
    required String longDescription,
    required String shortDescription,
    String? website,
    required int rooms,
    List<_i2.Media>? medias,
    required int userId,
    _i2.User? user,
    required int geoAddressId,
    _i2.GeoAddress? geoAddress,
  }) : super._(
          id: id,
          name: name,
          longDescription: longDescription,
          shortDescription: shortDescription,
          website: website,
          rooms: rooms,
          medias: medias,
          userId: userId,
          user: user,
          geoAddressId: geoAddressId,
          geoAddress: geoAddress,
        );

  @override
  Location copyWith({
    Object? id = _Undefined,
    String? name,
    String? longDescription,
    String? shortDescription,
    Object? website = _Undefined,
    int? rooms,
    Object? medias = _Undefined,
    int? userId,
    Object? user = _Undefined,
    int? geoAddressId,
    Object? geoAddress = _Undefined,
  }) {
    return Location(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      longDescription: longDescription ?? this.longDescription,
      shortDescription: shortDescription ?? this.shortDescription,
      website: website is String? ? website : this.website,
      rooms: rooms ?? this.rooms,
      medias: medias is List<_i2.Media>? ? medias : this.medias?.clone(),
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      geoAddressId: geoAddressId ?? this.geoAddressId,
      geoAddress: geoAddress is _i2.GeoAddress?
          ? geoAddress
          : this.geoAddress?.copyWith(),
    );
  }
}
