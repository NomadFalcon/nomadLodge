/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class GeoAddress extends _i1.TableRow {
  GeoAddress._({
    int? id,
    required this.shortAddress,
    required this.longAddress,
    required this.latitude,
    required this.longitude,
  }) : super(id);

  factory GeoAddress({
    int? id,
    required String shortAddress,
    required String longAddress,
    required double latitude,
    required double longitude,
  }) = _GeoAddressImpl;

  factory GeoAddress.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return GeoAddress(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      shortAddress: serializationManager
          .deserialize<String>(jsonSerialization['shortAddress']),
      longAddress: serializationManager
          .deserialize<String>(jsonSerialization['longAddress']),
      latitude: serializationManager
          .deserialize<double>(jsonSerialization['latitude']),
      longitude: serializationManager
          .deserialize<double>(jsonSerialization['longitude']),
    );
  }

  static final t = GeoAddressTable();

  static const db = GeoAddressRepository._();

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
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'shortAddress': shortAddress,
      'longAddress': longAddress,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'shortAddress': shortAddress,
      'longAddress': longAddress,
      'latitude': latitude,
      'longitude': longitude,
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
      case 'shortAddress':
        shortAddress = value;
        return;
      case 'longAddress':
        longAddress = value;
        return;
      case 'latitude':
        latitude = value;
        return;
      case 'longitude':
        longitude = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<GeoAddress>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GeoAddressTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<GeoAddress>(
      where: where != null ? where(GeoAddress.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<GeoAddress?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GeoAddressTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<GeoAddress>(
      where: where != null ? where(GeoAddress.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<GeoAddress?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<GeoAddress>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<GeoAddressTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<GeoAddress>(
      where: where(GeoAddress.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    GeoAddress row, {
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
    GeoAddress row, {
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
    GeoAddress row, {
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
    _i1.WhereExpressionBuilder<GeoAddressTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<GeoAddress>(
      where: where != null ? where(GeoAddress.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
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

@Deprecated('Use GeoAddressTable.t instead.')
GeoAddressTable tGeoAddress = GeoAddressTable();

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
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GeoAddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GeoAddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GeoAddressTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<GeoAddress>(
      where: where?.call(GeoAddress.t),
      orderBy: orderBy?.call(GeoAddress.t),
      orderByList: orderByList?.call(GeoAddress.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<GeoAddress?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GeoAddressTable>? where,
    int? offset,
    _i1.OrderByBuilder<GeoAddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GeoAddressTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<GeoAddress>(
      where: where?.call(GeoAddress.t),
      orderBy: orderBy?.call(GeoAddress.t),
      orderByList: orderByList?.call(GeoAddress.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<GeoAddress?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<GeoAddress>(
      id,
      transaction: transaction,
    );
  }

  Future<List<GeoAddress>> insert(
    _i1.Session session,
    List<GeoAddress> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<GeoAddress>(
      rows,
      transaction: transaction,
    );
  }

  Future<GeoAddress> insertRow(
    _i1.Session session,
    GeoAddress row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<GeoAddress>(
      row,
      transaction: transaction,
    );
  }

  Future<List<GeoAddress>> update(
    _i1.Session session,
    List<GeoAddress> rows, {
    _i1.ColumnSelections<GeoAddressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<GeoAddress>(
      rows,
      columns: columns?.call(GeoAddress.t),
      transaction: transaction,
    );
  }

  Future<GeoAddress> updateRow(
    _i1.Session session,
    GeoAddress row, {
    _i1.ColumnSelections<GeoAddressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<GeoAddress>(
      row,
      columns: columns?.call(GeoAddress.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<GeoAddress> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<GeoAddress>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    GeoAddress row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<GeoAddress>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<GeoAddressTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<GeoAddress>(
      where: where(GeoAddress.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GeoAddressTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<GeoAddress>(
      where: where?.call(GeoAddress.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
