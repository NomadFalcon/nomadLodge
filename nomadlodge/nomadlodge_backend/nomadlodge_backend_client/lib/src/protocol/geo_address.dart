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

abstract class GeoAddress implements _i1.SerializableModel {
  GeoAddress._({
    this.id,
    required this.shortAddress,
    required this.longAddress,
    required this.latitude,
    required this.longitude,
  });

  factory GeoAddress({
    int? id,
    required String shortAddress,
    required String longAddress,
    required double latitude,
    required double longitude,
  }) = _GeoAddressImpl;

  factory GeoAddress.fromJson(Map<String, dynamic> jsonSerialization) {
    return GeoAddress(
      id: jsonSerialization['id'] as int?,
      shortAddress: jsonSerialization['shortAddress'] as String,
      longAddress: jsonSerialization['longAddress'] as String,
      latitude: (jsonSerialization['latitude'] as num).toDouble(),
      longitude: (jsonSerialization['longitude'] as num).toDouble(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String shortAddress;

  String longAddress;

  double latitude;

  double longitude;

  GeoAddress copyWith({
    int? id,
    String? shortAddress,
    String? longAddress,
    double? latitude,
    double? longitude,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'shortAddress': shortAddress,
      'longAddress': longAddress,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _GeoAddressImpl extends GeoAddress {
  _GeoAddressImpl({
    int? id,
    required String shortAddress,
    required String longAddress,
    required double latitude,
    required double longitude,
  }) : super._(
          id: id,
          shortAddress: shortAddress,
          longAddress: longAddress,
          latitude: latitude,
          longitude: longitude,
        );

  @override
  GeoAddress copyWith({
    Object? id = _Undefined,
    String? shortAddress,
    String? longAddress,
    double? latitude,
    double? longitude,
  }) {
    return GeoAddress(
      id: id is int? ? id : this.id,
      shortAddress: shortAddress ?? this.shortAddress,
      longAddress: longAddress ?? this.longAddress,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}
