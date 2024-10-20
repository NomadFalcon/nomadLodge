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

abstract class Maintenance implements _i1.SerializableModel {
  Maintenance._({
    this.id,
    required this.maintenancetype,
    required this.start,
    this.end,
    required this.description,
    bool? completed,
    this.tasks,
    this.userId,
    this.user,
    this.feeId,
    this.fee,
    required this.locationId,
    this.location,
    this.bookingId,
    this.booking,
  }) : completed = completed ?? false;

  factory Maintenance({
    int? id,
    required _i2.MaintenanceType maintenancetype,
    required DateTime start,
    DateTime? end,
    required String description,
    bool? completed,
    List<_i2.Task>? tasks,
    int? userId,
    _i2.User? user,
    int? feeId,
    _i2.Fee? fee,
    required int locationId,
    _i2.Location? location,
    int? bookingId,
    _i2.Booking? booking,
  }) = _MaintenanceImpl;

  factory Maintenance.fromJson(Map<String, dynamic> jsonSerialization) {
    return Maintenance(
      id: jsonSerialization['id'] as int?,
      maintenancetype: _i2.MaintenanceType.fromJson(
          (jsonSerialization['maintenancetype'] as String)),
      start: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['start']),
      end: jsonSerialization['end'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['end']),
      description: jsonSerialization['description'] as String,
      completed: jsonSerialization['completed'] as bool,
      tasks: (jsonSerialization['tasks'] as List?)
          ?.map((e) => _i2.Task.fromJson((e as Map<String, dynamic>)))
          .toList(),
      userId: jsonSerialization['userId'] as int?,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      feeId: jsonSerialization['feeId'] as int?,
      fee: jsonSerialization['fee'] == null
          ? null
          : _i2.Fee.fromJson(
              (jsonSerialization['fee'] as Map<String, dynamic>)),
      locationId: jsonSerialization['locationId'] as int,
      location: jsonSerialization['location'] == null
          ? null
          : _i2.Location.fromJson(
              (jsonSerialization['location'] as Map<String, dynamic>)),
      bookingId: jsonSerialization['bookingId'] as int?,
      booking: jsonSerialization['booking'] == null
          ? null
          : _i2.Booking.fromJson(
              (jsonSerialization['booking'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.MaintenanceType maintenancetype;

  DateTime start;

  DateTime? end;

  String description;

  bool completed;

  List<_i2.Task>? tasks;

  int? userId;

  _i2.User? user;

  int? feeId;

  _i2.Fee? fee;

  int locationId;

  _i2.Location? location;

  int? bookingId;

  _i2.Booking? booking;

  Maintenance copyWith({
    int? id,
    _i2.MaintenanceType? maintenancetype,
    DateTime? start,
    DateTime? end,
    String? description,
    bool? completed,
    List<_i2.Task>? tasks,
    int? userId,
    _i2.User? user,
    int? feeId,
    _i2.Fee? fee,
    int? locationId,
    _i2.Location? location,
    int? bookingId,
    _i2.Booking? booking,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'maintenancetype': maintenancetype.toJson(),
      'start': start.toJson(),
      if (end != null) 'end': end?.toJson(),
      'description': description,
      'completed': completed,
      if (tasks != null) 'tasks': tasks?.toJson(valueToJson: (v) => v.toJson()),
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJson(),
      if (feeId != null) 'feeId': feeId,
      if (fee != null) 'fee': fee?.toJson(),
      'locationId': locationId,
      if (location != null) 'location': location?.toJson(),
      if (bookingId != null) 'bookingId': bookingId,
      if (booking != null) 'booking': booking?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MaintenanceImpl extends Maintenance {
  _MaintenanceImpl({
    int? id,
    required _i2.MaintenanceType maintenancetype,
    required DateTime start,
    DateTime? end,
    required String description,
    bool? completed,
    List<_i2.Task>? tasks,
    int? userId,
    _i2.User? user,
    int? feeId,
    _i2.Fee? fee,
    required int locationId,
    _i2.Location? location,
    int? bookingId,
    _i2.Booking? booking,
  }) : super._(
          id: id,
          maintenancetype: maintenancetype,
          start: start,
          end: end,
          description: description,
          completed: completed,
          tasks: tasks,
          userId: userId,
          user: user,
          feeId: feeId,
          fee: fee,
          locationId: locationId,
          location: location,
          bookingId: bookingId,
          booking: booking,
        );

  @override
  Maintenance copyWith({
    Object? id = _Undefined,
    _i2.MaintenanceType? maintenancetype,
    DateTime? start,
    Object? end = _Undefined,
    String? description,
    bool? completed,
    Object? tasks = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    Object? feeId = _Undefined,
    Object? fee = _Undefined,
    int? locationId,
    Object? location = _Undefined,
    Object? bookingId = _Undefined,
    Object? booking = _Undefined,
  }) {
    return Maintenance(
      id: id is int? ? id : this.id,
      maintenancetype: maintenancetype ?? this.maintenancetype,
      start: start ?? this.start,
      end: end is DateTime? ? end : this.end,
      description: description ?? this.description,
      completed: completed ?? this.completed,
      tasks: tasks is List<_i2.Task>?
          ? tasks
          : this.tasks?.map((e0) => e0.copyWith()).toList(),
      userId: userId is int? ? userId : this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      feeId: feeId is int? ? feeId : this.feeId,
      fee: fee is _i2.Fee? ? fee : this.fee?.copyWith(),
      locationId: locationId ?? this.locationId,
      location:
          location is _i2.Location? ? location : this.location?.copyWith(),
      bookingId: bookingId is int? ? bookingId : this.bookingId,
      booking: booking is _i2.Booking? ? booking : this.booking?.copyWith(),
    );
  }
}
