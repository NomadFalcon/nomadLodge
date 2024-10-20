/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class LocationTeam implements _i1.TableRow, _i1.ProtocolSerialization {
  LocationTeam._({
    this.id,
    required this.name,
    required this.description,
    required this.users,
    required this.invitations,
    required this.locationId,
    this.location,
  });

  factory LocationTeam({
    int? id,
    required String name,
    required String description,
    required List<_i2.User> users,
    required List<_i2.UserInvitation> invitations,
    required int locationId,
    _i2.Location? location,
  }) = _LocationTeamImpl;

  factory LocationTeam.fromJson(Map<String, dynamic> jsonSerialization) {
    return LocationTeam(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String,
      users: (jsonSerialization['users'] as List)
          .map((e) => _i2.User.fromJson((e as Map<String, dynamic>)))
          .toList(),
      invitations: (jsonSerialization['invitations'] as List)
          .map((e) => _i2.UserInvitation.fromJson((e as Map<String, dynamic>)))
          .toList(),
      locationId: jsonSerialization['locationId'] as int,
      location: jsonSerialization['location'] == null
          ? null
          : _i2.Location.fromJson(
              (jsonSerialization['location'] as Map<String, dynamic>)),
    );
  }

  static final t = LocationTeamTable();

  static const db = LocationTeamRepository._();

  @override
  int? id;

  String name;

  String description;

  List<_i2.User> users;

  List<_i2.UserInvitation> invitations;

  int locationId;

  _i2.Location? location;

  @override
  _i1.Table get table => t;

  LocationTeam copyWith({
    int? id,
    String? name,
    String? description,
    List<_i2.User>? users,
    List<_i2.UserInvitation>? invitations,
    int? locationId,
    _i2.Location? location,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'users': users.toJson(valueToJson: (v) => v.toJson()),
      'invitations': invitations.toJson(valueToJson: (v) => v.toJson()),
      'locationId': locationId,
      if (location != null) 'location': location?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'users': users.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'invitations':
          invitations.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'locationId': locationId,
      if (location != null) 'location': location?.toJsonForProtocol(),
    };
  }

  static LocationTeamInclude include({_i2.LocationInclude? location}) {
    return LocationTeamInclude._(location: location);
  }

  static LocationTeamIncludeList includeList({
    _i1.WhereExpressionBuilder<LocationTeamTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LocationTeamTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTeamTable>? orderByList,
    LocationTeamInclude? include,
  }) {
    return LocationTeamIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(LocationTeam.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(LocationTeam.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LocationTeamImpl extends LocationTeam {
  _LocationTeamImpl({
    int? id,
    required String name,
    required String description,
    required List<_i2.User> users,
    required List<_i2.UserInvitation> invitations,
    required int locationId,
    _i2.Location? location,
  }) : super._(
          id: id,
          name: name,
          description: description,
          users: users,
          invitations: invitations,
          locationId: locationId,
          location: location,
        );

  @override
  LocationTeam copyWith({
    Object? id = _Undefined,
    String? name,
    String? description,
    List<_i2.User>? users,
    List<_i2.UserInvitation>? invitations,
    int? locationId,
    Object? location = _Undefined,
  }) {
    return LocationTeam(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      users: users ?? this.users.map((e0) => e0.copyWith()).toList(),
      invitations:
          invitations ?? this.invitations.map((e0) => e0.copyWith()).toList(),
      locationId: locationId ?? this.locationId,
      location:
          location is _i2.Location? ? location : this.location?.copyWith(),
    );
  }
}

class LocationTeamTable extends _i1.Table {
  LocationTeamTable({super.tableRelation}) : super(tableName: 'location_team') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    users = _i1.ColumnSerializable(
      'users',
      this,
    );
    invitations = _i1.ColumnSerializable(
      'invitations',
      this,
    );
    locationId = _i1.ColumnInt(
      'locationId',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnSerializable users;

  late final _i1.ColumnSerializable invitations;

  late final _i1.ColumnInt locationId;

  _i2.LocationTable? _location;

  _i2.LocationTable get location {
    if (_location != null) return _location!;
    _location = _i1.createRelationTable(
      relationFieldName: 'location',
      field: LocationTeam.t.locationId,
      foreignField: _i2.Location.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.LocationTable(tableRelation: foreignTableRelation),
    );
    return _location!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        description,
        users,
        invitations,
        locationId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'location') {
      return location;
    }
    return null;
  }
}

class LocationTeamInclude extends _i1.IncludeObject {
  LocationTeamInclude._({_i2.LocationInclude? location}) {
    _location = location;
  }

  _i2.LocationInclude? _location;

  @override
  Map<String, _i1.Include?> get includes => {'location': _location};

  @override
  _i1.Table get table => LocationTeam.t;
}

class LocationTeamIncludeList extends _i1.IncludeList {
  LocationTeamIncludeList._({
    _i1.WhereExpressionBuilder<LocationTeamTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(LocationTeam.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => LocationTeam.t;
}

class LocationTeamRepository {
  const LocationTeamRepository._();

  final attachRow = const LocationTeamAttachRowRepository._();

  Future<List<LocationTeam>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<LocationTeamTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LocationTeamTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTeamTable>? orderByList,
    _i1.Transaction? transaction,
    LocationTeamInclude? include,
  }) async {
    return databaseAccessor.db.find<LocationTeam>(
      where: where?.call(LocationTeam.t),
      orderBy: orderBy?.call(LocationTeam.t),
      orderByList: orderByList?.call(LocationTeam.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<LocationTeam?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<LocationTeamTable>? where,
    int? offset,
    _i1.OrderByBuilder<LocationTeamTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTeamTable>? orderByList,
    _i1.Transaction? transaction,
    LocationTeamInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<LocationTeam>(
      where: where?.call(LocationTeam.t),
      orderBy: orderBy?.call(LocationTeam.t),
      orderByList: orderByList?.call(LocationTeam.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<LocationTeam?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    LocationTeamInclude? include,
  }) async {
    return databaseAccessor.db.findById<LocationTeam>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<List<LocationTeam>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<LocationTeam> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<LocationTeam>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<LocationTeam> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    LocationTeam row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<LocationTeam>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<LocationTeam>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<LocationTeam> rows, {
    _i1.ColumnSelections<LocationTeamTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<LocationTeam>(
      rows,
      columns: columns?.call(LocationTeam.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<LocationTeam> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    LocationTeam row, {
    _i1.ColumnSelections<LocationTeamTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<LocationTeam>(
      row,
      columns: columns?.call(LocationTeam.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<LocationTeam>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<LocationTeam> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<LocationTeam>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<LocationTeam> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    LocationTeam row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<LocationTeam>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<LocationTeam>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<LocationTeamTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<LocationTeam>(
      where: where(LocationTeam.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<LocationTeamTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<LocationTeam>(
      where: where?.call(LocationTeam.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class LocationTeamAttachRowRepository {
  const LocationTeamAttachRowRepository._();

  Future<void> location(
    _i1.DatabaseAccessor databaseAccessor,
    LocationTeam locationTeam,
    _i2.Location location, {
    _i1.Transaction? transaction,
  }) async {
    if (locationTeam.id == null) {
      throw ArgumentError.notNull('locationTeam.id');
    }
    if (location.id == null) {
      throw ArgumentError.notNull('location.id');
    }

    var $locationTeam = locationTeam.copyWith(locationId: location.id);
    await databaseAccessor.db.updateRow<LocationTeam>(
      $locationTeam,
      columns: [LocationTeam.t.locationId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
