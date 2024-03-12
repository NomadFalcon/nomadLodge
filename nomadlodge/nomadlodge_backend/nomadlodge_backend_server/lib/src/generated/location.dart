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

abstract class Location extends _i1.TableRow {
  Location._({
    int? id,
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
  }) : super(id);

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

  static final t = LocationTable();

  static const db = LocationRepository._();

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

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'longDescription': longDescription,
      'shortDescription': shortDescription,
      'website': website,
      'rooms': rooms,
      'userId': userId,
      'geoAddressId': geoAddressId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'longDescription': longDescription,
      'shortDescription': shortDescription,
      if (website != null) 'website': website,
      'rooms': rooms,
      if (medias != null)
        'medias': medias?.toJson(valueToJson: (v) => v.allToJson()),
      'userId': userId,
      if (user != null) 'user': user?.allToJson(),
      'geoAddressId': geoAddressId,
      if (geoAddress != null) 'geoAddress': geoAddress?.allToJson(),
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
      case 'longDescription':
        longDescription = value;
        return;
      case 'shortDescription':
        shortDescription = value;
        return;
      case 'website':
        website = value;
        return;
      case 'rooms':
        rooms = value;
        return;
      case 'userId':
        userId = value;
        return;
      case 'geoAddressId':
        geoAddressId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Location>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    LocationInclude? include,
  }) async {
    return session.db.find<Location>(
      where: where != null ? where(Location.t) : null,
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
  static Future<Location?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    LocationInclude? include,
  }) async {
    return session.db.findSingleRow<Location>(
      where: where != null ? where(Location.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Location?> findById(
    _i1.Session session,
    int id, {
    LocationInclude? include,
  }) async {
    return session.db.findById<Location>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LocationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Location>(
      where: where(Location.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Location row, {
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
    Location row, {
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
    Location row, {
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
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Location>(
      where: where != null ? where(Location.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static LocationInclude include({
    _i2.MediaIncludeList? medias,
    _i2.UserInclude? user,
    _i2.GeoAddressInclude? geoAddress,
  }) {
    return LocationInclude._(
      medias: medias,
      user: user,
      geoAddress: geoAddress,
    );
  }

  static LocationIncludeList includeList({
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LocationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTable>? orderByList,
    LocationInclude? include,
  }) {
    return LocationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Location.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Location.t),
      include: include,
    );
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

class LocationTable extends _i1.Table {
  LocationTable({super.tableRelation}) : super(tableName: 'location') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    longDescription = _i1.ColumnString(
      'longDescription',
      this,
    );
    shortDescription = _i1.ColumnString(
      'shortDescription',
      this,
    );
    website = _i1.ColumnString(
      'website',
      this,
    );
    rooms = _i1.ColumnInt(
      'rooms',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    geoAddressId = _i1.ColumnInt(
      'geoAddressId',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString longDescription;

  late final _i1.ColumnString shortDescription;

  late final _i1.ColumnString website;

  late final _i1.ColumnInt rooms;

  _i2.MediaTable? ___medias;

  _i1.ManyRelation<_i2.MediaTable>? _medias;

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  late final _i1.ColumnInt geoAddressId;

  _i2.GeoAddressTable? _geoAddress;

  _i2.MediaTable get __medias {
    if (___medias != null) return ___medias!;
    ___medias = _i1.createRelationTable(
      relationFieldName: '__medias',
      field: Location.t.id,
      foreignField: _i2.Media.t.$_locationMediasLocationId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MediaTable(tableRelation: foreignTableRelation),
    );
    return ___medias!;
  }

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Location.t.userId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i2.GeoAddressTable get geoAddress {
    if (_geoAddress != null) return _geoAddress!;
    _geoAddress = _i1.createRelationTable(
      relationFieldName: 'geoAddress',
      field: Location.t.geoAddressId,
      foreignField: _i2.GeoAddress.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.GeoAddressTable(tableRelation: foreignTableRelation),
    );
    return _geoAddress!;
  }

  _i1.ManyRelation<_i2.MediaTable> get medias {
    if (_medias != null) return _medias!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'medias',
      field: Location.t.id,
      foreignField: _i2.Media.t.$_locationMediasLocationId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MediaTable(tableRelation: foreignTableRelation),
    );
    _medias = _i1.ManyRelation<_i2.MediaTable>(
      tableWithRelations: relationTable,
      table: _i2.MediaTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _medias!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        longDescription,
        shortDescription,
        website,
        rooms,
        userId,
        geoAddressId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'medias') {
      return __medias;
    }
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'geoAddress') {
      return geoAddress;
    }
    return null;
  }
}

@Deprecated('Use LocationTable.t instead.')
LocationTable tLocation = LocationTable();

class LocationInclude extends _i1.IncludeObject {
  LocationInclude._({
    _i2.MediaIncludeList? medias,
    _i2.UserInclude? user,
    _i2.GeoAddressInclude? geoAddress,
  }) {
    _medias = medias;
    _user = user;
    _geoAddress = geoAddress;
  }

  _i2.MediaIncludeList? _medias;

  _i2.UserInclude? _user;

  _i2.GeoAddressInclude? _geoAddress;

  @override
  Map<String, _i1.Include?> get includes => {
        'medias': _medias,
        'user': _user,
        'geoAddress': _geoAddress,
      };

  @override
  _i1.Table get table => Location.t;
}

class LocationIncludeList extends _i1.IncludeList {
  LocationIncludeList._({
    _i1.WhereExpressionBuilder<LocationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Location.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Location.t;
}

class LocationRepository {
  const LocationRepository._();

  final attach = const LocationAttachRepository._();

  final attachRow = const LocationAttachRowRepository._();

  final detach = const LocationDetachRepository._();

  final detachRow = const LocationDetachRowRepository._();

  Future<List<Location>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LocationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTable>? orderByList,
    _i1.Transaction? transaction,
    LocationInclude? include,
  }) async {
    return session.dbNext.find<Location>(
      where: where?.call(Location.t),
      orderBy: orderBy?.call(Location.t),
      orderByList: orderByList?.call(Location.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Location?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? offset,
    _i1.OrderByBuilder<LocationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTable>? orderByList,
    _i1.Transaction? transaction,
    LocationInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Location>(
      where: where?.call(Location.t),
      orderBy: orderBy?.call(Location.t),
      orderByList: orderByList?.call(Location.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Location?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    LocationInclude? include,
  }) async {
    return session.dbNext.findById<Location>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Location>> insert(
    _i1.Session session,
    List<Location> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Location>(
      rows,
      transaction: transaction,
    );
  }

  Future<Location> insertRow(
    _i1.Session session,
    Location row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Location>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Location>> update(
    _i1.Session session,
    List<Location> rows, {
    _i1.ColumnSelections<LocationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Location>(
      rows,
      columns: columns?.call(Location.t),
      transaction: transaction,
    );
  }

  Future<Location> updateRow(
    _i1.Session session,
    Location row, {
    _i1.ColumnSelections<LocationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Location>(
      row,
      columns: columns?.call(Location.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Location> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Location>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Location row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Location>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LocationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Location>(
      where: where(Location.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Location>(
      where: where?.call(Location.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class LocationAttachRepository {
  const LocationAttachRepository._();

  Future<void> medias(
    _i1.Session session,
    Location location,
    List<_i2.Media> media,
  ) async {
    if (media.any((e) => e.id == null)) {
      throw ArgumentError.notNull('media.id');
    }
    if (location.id == null) {
      throw ArgumentError.notNull('location.id');
    }

    var $media = media
        .map((e) => _i2.MediaImplicit(
              e,
              $_locationMediasLocationId: location.id,
            ))
        .toList();
    await session.dbNext.update<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_locationMediasLocationId],
    );
  }
}

class LocationAttachRowRepository {
  const LocationAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    Location location,
    _i2.User user,
  ) async {
    if (location.id == null) {
      throw ArgumentError.notNull('location.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $location = location.copyWith(userId: user.id);
    await session.dbNext.updateRow<Location>(
      $location,
      columns: [Location.t.userId],
    );
  }

  Future<void> geoAddress(
    _i1.Session session,
    Location location,
    _i2.GeoAddress geoAddress,
  ) async {
    if (location.id == null) {
      throw ArgumentError.notNull('location.id');
    }
    if (geoAddress.id == null) {
      throw ArgumentError.notNull('geoAddress.id');
    }

    var $location = location.copyWith(geoAddressId: geoAddress.id);
    await session.dbNext.updateRow<Location>(
      $location,
      columns: [Location.t.geoAddressId],
    );
  }

  Future<void> medias(
    _i1.Session session,
    Location location,
    _i2.Media media,
  ) async {
    if (media.id == null) {
      throw ArgumentError.notNull('media.id');
    }
    if (location.id == null) {
      throw ArgumentError.notNull('location.id');
    }

    var $media = _i2.MediaImplicit(
      media,
      $_locationMediasLocationId: location.id,
    );
    await session.dbNext.updateRow<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_locationMediasLocationId],
    );
  }
}

class LocationDetachRepository {
  const LocationDetachRepository._();

  Future<void> medias(
    _i1.Session session,
    List<_i2.Media> media,
  ) async {
    if (media.any((e) => e.id == null)) {
      throw ArgumentError.notNull('media.id');
    }

    var $media = media
        .map((e) => _i2.MediaImplicit(
              e,
              $_locationMediasLocationId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_locationMediasLocationId],
    );
  }
}

class LocationDetachRowRepository {
  const LocationDetachRowRepository._();

  Future<void> medias(
    _i1.Session session,
    _i2.Media media,
  ) async {
    if (media.id == null) {
      throw ArgumentError.notNull('media.id');
    }

    var $media = _i2.MediaImplicit(
      media,
      $_locationMediasLocationId: null,
    );
    await session.dbNext.updateRow<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_locationMediasLocationId],
    );
  }
}
