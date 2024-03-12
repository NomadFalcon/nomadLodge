/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class LocationTeam extends _i1.TableRow {
  LocationTeam._({
    int? id,
    required this.name,
    required this.description,
    this.users,
    required this.locationId,
    this.location,
  }) : super(id);

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

  static final t = LocationTeamTable();

  static const db = LocationTeamRepository._();

  String name;

  String description;

  List<_i2.User>? users;

  int locationId;

  _i2.Location? location;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'users': users,
      'locationId': locationId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      if (users != null)
        'users': users?.toJson(valueToJson: (v) => v.allToJson()),
      'locationId': locationId,
      if (location != null) 'location': location?.allToJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'description':
        description = value;
        return;
      case 'users':
        users = value;
        return;
      case 'locationId':
        locationId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<LocationTeam>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTeamTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    LocationTeamInclude? include,
  }) async {
    return session.db.find<LocationTeam>(
      where: where != null ? where(LocationTeam.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<LocationTeam?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTeamTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    LocationTeamInclude? include,
  }) async {
    return session.db.findSingleRow<LocationTeam>(
      where: where != null ? where(LocationTeam.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<LocationTeam?> findById(
    _i1.Session session,
    int id, {
    LocationTeamInclude? include,
  }) async {
    return session.db.findById<LocationTeam>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LocationTeamTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<LocationTeam>(
      where: where(LocationTeam.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    LocationTeam row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    LocationTeam row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    LocationTeam row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTeamTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<LocationTeam>(
      where: where != null ? where(LocationTeam.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
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
    locationId = _i1.ColumnInt(
      'locationId',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnSerializable users;

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

@Deprecated('Use LocationTeamTable.t instead.')
LocationTeamTable tLocationTeam = LocationTeamTable();

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
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTeamTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LocationTeamTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTeamTable>? orderByList,
    _i1.Transaction? transaction,
    LocationTeamInclude? include,
  }) async {
    return session.dbNext.find<LocationTeam>(
      where: where?.call(LocationTeam.t),
      orderBy: orderBy?.call(LocationTeam.t),
      orderByList: orderByList?.call(LocationTeam.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<LocationTeam?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTeamTable>? where,
    int? offset,
    _i1.OrderByBuilder<LocationTeamTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTeamTable>? orderByList,
    _i1.Transaction? transaction,
    LocationTeamInclude? include,
  }) async {
    return session.dbNext.findFirstRow<LocationTeam>(
      where: where?.call(LocationTeam.t),
      orderBy: orderBy?.call(LocationTeam.t),
      orderByList: orderByList?.call(LocationTeam.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<LocationTeam?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    LocationTeamInclude? include,
  }) async {
    return session.dbNext.findById<LocationTeam>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<LocationTeam>> insert(
    _i1.Session session,
    List<LocationTeam> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<LocationTeam>(
      rows,
      transaction: transaction,
    );
  }

  Future<LocationTeam> insertRow(
    _i1.Session session,
    LocationTeam row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<LocationTeam>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LocationTeam>> update(
    _i1.Session session,
    List<LocationTeam> rows, {
    _i1.ColumnSelections<LocationTeamTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<LocationTeam>(
      rows,
      columns: columns?.call(LocationTeam.t),
      transaction: transaction,
    );
  }

  Future<LocationTeam> updateRow(
    _i1.Session session,
    LocationTeam row, {
    _i1.ColumnSelections<LocationTeamTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<LocationTeam>(
      row,
      columns: columns?.call(LocationTeam.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<LocationTeam> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<LocationTeam>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    LocationTeam row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<LocationTeam>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LocationTeamTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<LocationTeam>(
      where: where(LocationTeam.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTeamTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<LocationTeam>(
      where: where?.call(LocationTeam.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class LocationTeamAttachRowRepository {
  const LocationTeamAttachRowRepository._();

  Future<void> location(
    _i1.Session session,
    LocationTeam locationTeam,
    _i2.Location location,
  ) async {
    if (locationTeam.id == null) {
      throw ArgumentError.notNull('locationTeam.id');
    }
    if (location.id == null) {
      throw ArgumentError.notNull('location.id');
    }

    var $locationTeam = locationTeam.copyWith(locationId: location.id);
    await session.dbNext.updateRow<LocationTeam>(
      $locationTeam,
      columns: [LocationTeam.t.locationId],
    );
  }
}
