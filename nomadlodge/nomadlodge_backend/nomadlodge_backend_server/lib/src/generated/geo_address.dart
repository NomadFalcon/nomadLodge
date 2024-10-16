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

abstract class GeoAddress implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = GeoAddressTable();

  static const db = GeoAddressRepository._();

  @override
  int? id;

  String shortAddress;

  String longAddress;

  double latitude;

  double longitude;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'shortAddress': shortAddress,
      'longAddress': longAddress,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  static GeoAddressInclude include() {
    return GeoAddressInclude._();
  }

  static GeoAddressIncludeList includeList({
    _i1.WhereExpressionBuilder<GeoAddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GeoAddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GeoAddressTable>? orderByList,
    GeoAddressInclude? include,
  }) {
    return GeoAddressIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(GeoAddress.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(GeoAddress.t),
      include: include,
    );
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

class GeoAddressTable extends _i1.Table {
  GeoAddressTable({super.tableRelation}) : super(tableName: 'geoaddress') {
    shortAddress = _i1.ColumnString(
      'shortAddress',
      this,
    );
    longAddress = _i1.ColumnString(
      'longAddress',
      this,
    );
    latitude = _i1.ColumnDouble(
      'latitude',
      this,
    );
    longitude = _i1.ColumnDouble(
      'longitude',
      this,
    );
  }

  late final _i1.ColumnString shortAddress;

  late final _i1.ColumnString longAddress;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  @override
  List<_i1.Column> get columns => [
        id,
        shortAddress,
        longAddress,
        latitude,
        longitude,
      ];
}

class GeoAddressInclude extends _i1.IncludeObject {
  GeoAddressInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => GeoAddress.t;
}

class GeoAddressIncludeList extends _i1.IncludeList {
  GeoAddressIncludeList._({
    _i1.WhereExpressionBuilder<GeoAddressTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(GeoAddress.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => GeoAddress.t;
}

class GeoAddressRepository {
  const GeoAddressRepository._();

  Future<List<GeoAddress>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<GeoAddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GeoAddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GeoAddressTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<GeoAddress>(
      where: where?.call(GeoAddress.t),
      orderBy: orderBy?.call(GeoAddress.t),
      orderByList: orderByList?.call(GeoAddress.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<GeoAddress?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<GeoAddressTable>? where,
    int? offset,
    _i1.OrderByBuilder<GeoAddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GeoAddressTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<GeoAddress>(
      where: where?.call(GeoAddress.t),
      orderBy: orderBy?.call(GeoAddress.t),
      orderByList: orderByList?.call(GeoAddress.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<GeoAddress?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<GeoAddress>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<GeoAddress>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<GeoAddress> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<GeoAddress>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<GeoAddress> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    GeoAddress row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<GeoAddress>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<GeoAddress>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<GeoAddress> rows, {
    _i1.ColumnSelections<GeoAddressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<GeoAddress>(
      rows,
      columns: columns?.call(GeoAddress.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<GeoAddress> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    GeoAddress row, {
    _i1.ColumnSelections<GeoAddressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<GeoAddress>(
      row,
      columns: columns?.call(GeoAddress.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<GeoAddress>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<GeoAddress> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<GeoAddress>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<GeoAddress> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    GeoAddress row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<GeoAddress>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<GeoAddress>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<GeoAddressTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<GeoAddress>(
      where: where(GeoAddress.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<GeoAddressTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<GeoAddress>(
      where: where?.call(GeoAddress.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
