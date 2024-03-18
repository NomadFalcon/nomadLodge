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

abstract class Maintenance extends _i1.SerializableEntity {
  Maintenance._({
    this.id,
    required this.maintenancetypeId,
    this.maintenancetype,
    required this.start,
    this.end,
    required this.description,
    this.tasks,
    required this.userId,
    this.user,
    required this.feeId,
    this.fee,
    required this.locationId,
    this.location,
  });

  factory Maintenance({
    int? id,
    required int maintenancetypeId,
    _i2.Maintenancetype? maintenancetype,
    required DateTime start,
    DateTime? end,
    required String description,
    List<_i2.Task>? tasks,
    required int userId,
    _i2.User? user,
    required int feeId,
    _i2.Fee? fee,
    required int locationId,
    _i2.Location? location,
  }) = _MaintenanceImpl;

  factory Maintenance.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Maintenance(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      maintenancetypeId: serializationManager
          .deserialize<int>(jsonSerialization['maintenancetypeId']),
      maintenancetype: serializationManager.deserialize<_i2.Maintenancetype?>(
          jsonSerialization['maintenancetype']),
      start: serializationManager
          .deserialize<DateTime>(jsonSerialization['start']),
      end:
          serializationManager.deserialize<DateTime?>(jsonSerialization['end']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      tasks: serializationManager
          .deserialize<List<_i2.Task>?>(jsonSerialization['tasks']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['user']),
      feeId: serializationManager.deserialize<int>(jsonSerialization['feeId']),
      fee: serializationManager.deserialize<_i2.Fee?>(jsonSerialization['fee']),
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

  int maintenancetypeId;

  _i2.Maintenancetype? maintenancetype;

  DateTime start;

  DateTime? end;

  String description;

  List<_i2.Task>? tasks;

  int userId;

  _i2.User? user;

  int feeId;

  _i2.Fee? fee;

  int locationId;

  _i2.Location? location;

  Maintenance copyWith({
    int? id,
    int? maintenancetypeId,
    _i2.Maintenancetype? maintenancetype,
    DateTime? start,
    DateTime? end,
    String? description,
    List<_i2.Task>? tasks,
    int? userId,
    _i2.User? user,
    int? feeId,
    _i2.Fee? fee,
    int? locationId,
    _i2.Location? location,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'maintenancetypeId': maintenancetypeId,
      if (maintenancetype != null) 'maintenancetype': maintenancetype?.toJson(),
      'start': start.toJson(),
      if (end != null) 'end': end?.toJson(),
      'description': description,
      if (tasks != null) 'tasks': tasks?.toJson(valueToJson: (v) => v.toJson()),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'feeId': feeId,
      if (fee != null) 'fee': fee?.toJson(),
      'locationId': locationId,
      if (location != null) 'location': location?.toJson(),
    };
  }
}

class _Undefined {}

class _MaintenanceImpl extends Maintenance {
  _MaintenanceImpl({
    int? id,
    required int maintenancetypeId,
    _i2.Maintenancetype? maintenancetype,
    required DateTime start,
    DateTime? end,
    required String description,
    List<_i2.Task>? tasks,
    required int userId,
    _i2.User? user,
    required int feeId,
    _i2.Fee? fee,
    required int locationId,
    _i2.Location? location,
  }) : super._(
          id: id,
          maintenancetypeId: maintenancetypeId,
          maintenancetype: maintenancetype,
          start: start,
          end: end,
          description: description,
          tasks: tasks,
          userId: userId,
          user: user,
          feeId: feeId,
          fee: fee,
          locationId: locationId,
          location: location,
        );

  @override
  Maintenance copyWith({
    Object? id = _Undefined,
    int? maintenancetypeId,
    Object? maintenancetype = _Undefined,
    DateTime? start,
    Object? end = _Undefined,
    String? description,
    Object? tasks = _Undefined,
    int? userId,
    Object? user = _Undefined,
    int? feeId,
    Object? fee = _Undefined,
    int? locationId,
    Object? location = _Undefined,
  }) {
    return Maintenance(
      id: id is int? ? id : this.id,
      maintenancetypeId: maintenancetypeId ?? this.maintenancetypeId,
      maintenancetype: maintenancetype is _i2.Maintenancetype?
          ? maintenancetype
          : this.maintenancetype?.copyWith(),
      start: start ?? this.start,
      end: end is DateTime? ? end : this.end,
      description: description ?? this.description,
      tasks: tasks is List<_i2.Task>? ? tasks : this.tasks?.clone(),
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      feeId: feeId ?? this.feeId,
      fee: fee is _i2.Fee? ? fee : this.fee?.copyWith(),
      locationId: locationId ?? this.locationId,
      location:
          location is _i2.Location? ? location : this.location?.copyWith(),
    );
  }
}
