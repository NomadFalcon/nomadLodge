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

abstract class Booking extends _i1.SerializableEntity {
  Booking._({
    this.id,
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
    required String platform,
    required DateTime start,
    required DateTime end,
    required int userId,
    _i2.User? user,
    required int locationId,
    _i2.Location? location,
  }) = _BookingImpl;

  factory Booking.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Booking(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      platform: serializationManager
          .deserialize<String>(jsonSerialization['platform']),
      start: serializationManager
          .deserialize<DateTime>(jsonSerialization['start']),
      end: serializationManager.deserialize<DateTime>(jsonSerialization['end']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['user']),
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

  String platform;

  DateTime start;

  DateTime end;

  int userId;

  _i2.User? user;

  int locationId;

  _i2.Location? location;

  Booking copyWith({
    int? id,
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
      'platform': platform,
      'start': start.toJson(),
      'end': end.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'locationId': locationId,
      if (location != null) 'location': location?.toJson(),
    };
  }
}

class _Undefined {}

class _BookingImpl extends Booking {
  _BookingImpl({
    int? id,
    required String platform,
    required DateTime start,
    required DateTime end,
    required int userId,
    _i2.User? user,
    required int locationId,
    _i2.Location? location,
  }) : super._(
          id: id,
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
