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

abstract class Booking implements _i1.SerializableModel {
  Booking._({
    this.id,
    required this.externalId,
    required this.platform,
    required this.start,
    required this.end,
    required this.userId,
    this.user,
    required this.locationId,
    this.location,
  });

  factory Booking({
    int? id,
    required String externalId,
    required String platform,
    required DateTime start,
    required DateTime end,
    required int userId,
    _i2.User? user,
    required int locationId,
    _i2.Location? location,
  }) = _BookingImpl;

  factory Booking.fromJson(Map<String, dynamic> jsonSerialization) {
    return Booking(
      id: jsonSerialization['id'] as int?,
      externalId: jsonSerialization['externalId'] as String,
      platform: jsonSerialization['platform'] as String,
      start: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['start']),
      end: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['end']),
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      locationId: jsonSerialization['locationId'] as int,
      location: jsonSerialization['location'] == null
          ? null
          : _i2.Location.fromJson(
              (jsonSerialization['location'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String externalId;

  String platform;

  DateTime start;

  DateTime end;

  int userId;

  _i2.User? user;

  int locationId;

  _i2.Location? location;

  Booking copyWith({
    int? id,
    String? externalId,
    String? platform,
    DateTime? start,
    DateTime? end,
    int? userId,
    _i2.User? user,
    int? locationId,
    _i2.Location? location,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'externalId': externalId,
      'platform': platform,
      'start': start.toJson(),
      'end': end.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'locationId': locationId,
      if (location != null) 'location': location?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BookingImpl extends Booking {
  _BookingImpl({
    int? id,
    required String externalId,
    required String platform,
    required DateTime start,
    required DateTime end,
    required int userId,
    _i2.User? user,
    required int locationId,
    _i2.Location? location,
  }) : super._(
          id: id,
          externalId: externalId,
          platform: platform,
          start: start,
          end: end,
          userId: userId,
          user: user,
          locationId: locationId,
          location: location,
        );

  @override
  Booking copyWith({
    Object? id = _Undefined,
    String? externalId,
    String? platform,
    DateTime? start,
    DateTime? end,
    int? userId,
    Object? user = _Undefined,
    int? locationId,
    Object? location = _Undefined,
  }) {
    return Booking(
      id: id is int? ? id : this.id,
      externalId: externalId ?? this.externalId,
      platform: platform ?? this.platform,
      start: start ?? this.start,
      end: end ?? this.end,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      locationId: locationId ?? this.locationId,
      location:
          location is _i2.Location? ? location : this.location?.copyWith(),
    );
  }
}
