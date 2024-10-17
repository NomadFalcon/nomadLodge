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

abstract class Product implements _i1.TableRow, _i1.ProtocolSerialization {
  Product._({
    this.id,
    this.start,
    this.end,
    required this.description,
    this.medias,
    required this.feeId,
    this.fee,
    required this.locationId,
    this.location,
  });

  factory Product({
    int? id,
    DateTime? start,
    DateTime? end,
    required String description,
    List<_i2.Media>? medias,
    required int feeId,
    _i2.Fee? fee,
    required int locationId,
    _i2.Location? location,
  }) = _ProductImpl;

  factory Product.fromJson(Map<String, dynamic> jsonSerialization) {
    return Product(
      id: jsonSerialization['id'] as int?,
      start: jsonSerialization['start'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['start']),
      end: jsonSerialization['end'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['end']),
      description: jsonSerialization['description'] as String,
      medias: (jsonSerialization['medias'] as List?)
          ?.map((e) => _i2.Media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      feeId: jsonSerialization['feeId'] as int,
      fee: jsonSerialization['fee'] == null
          ? null
          : _i2.Fee.fromJson(
              (jsonSerialization['fee'] as Map<String, dynamic>)),
      locationId: jsonSerialization['locationId'] as int,
      location: jsonSerialization['location'] == null
          ? null
          : _i2.Location.fromJson(
              (jsonSerialization['location'] as Map<String, dynamic>)),
    );
  }

  static final t = ProductTable();

  static const db = ProductRepository._();

  @override
  int? id;

  DateTime? start;

  DateTime? end;

  String description;

  List<_i2.Media>? medias;

  int feeId;

  _i2.Fee? fee;

  int locationId;

  _i2.Location? location;

  @override
  _i1.Table get table => t;

  Product copyWith({
    int? id,
    DateTime? start,
    DateTime? end,
    String? description,
    List<_i2.Media>? medias,
    int? feeId,
    _i2.Fee? fee,
    int? locationId,
    _i2.Location? location,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (start != null) 'start': start?.toJson(),
      if (end != null) 'end': end?.toJson(),
      'description': description,
      if (medias != null)
        'medias': medias?.toJson(valueToJson: (v) => v.toJson()),
      'feeId': feeId,
      if (fee != null) 'fee': fee?.toJson(),
      'locationId': locationId,
      if (location != null) 'location': location?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (start != null) 'start': start?.toJson(),
      if (end != null) 'end': end?.toJson(),
      'description': description,
      if (medias != null)
        'medias': medias?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'feeId': feeId,
      if (fee != null) 'fee': fee?.toJsonForProtocol(),
      'locationId': locationId,
      if (location != null) 'location': location?.toJsonForProtocol(),
    };
  }

  static ProductInclude include({
    _i2.MediaIncludeList? medias,
    _i2.FeeInclude? fee,
    _i2.LocationInclude? location,
  }) {
    return ProductInclude._(
      medias: medias,
      fee: fee,
      location: location,
    );
  }

  static ProductIncludeList includeList({
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    ProductInclude? include,
  }) {
    return ProductIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Product.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Product.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductImpl extends Product {
  _ProductImpl({
    int? id,
    DateTime? start,
    DateTime? end,
    required String description,
    List<_i2.Media>? medias,
    required int feeId,
    _i2.Fee? fee,
    required int locationId,
    _i2.Location? location,
  }) : super._(
          id: id,
          start: start,
          end: end,
          description: description,
          medias: medias,
          feeId: feeId,
          fee: fee,
          locationId: locationId,
          location: location,
        );

  @override
  Product copyWith({
    Object? id = _Undefined,
    Object? start = _Undefined,
    Object? end = _Undefined,
    String? description,
    Object? medias = _Undefined,
    int? feeId,
    Object? fee = _Undefined,
    int? locationId,
    Object? location = _Undefined,
  }) {
    return Product(
      id: id is int? ? id : this.id,
      start: start is DateTime? ? start : this.start,
      end: end is DateTime? ? end : this.end,
      description: description ?? this.description,
      medias: medias is List<_i2.Media>?
          ? medias
          : this.medias?.map((e0) => e0.copyWith()).toList(),
      feeId: feeId ?? this.feeId,
      fee: fee is _i2.Fee? ? fee : this.fee?.copyWith(),
      locationId: locationId ?? this.locationId,
      location:
          location is _i2.Location? ? location : this.location?.copyWith(),
    );
  }
}

class ProductTable extends _i1.Table {
  ProductTable({super.tableRelation}) : super(tableName: 'product') {
    start = _i1.ColumnDateTime(
      'start',
      this,
    );
    end = _i1.ColumnDateTime(
      'end',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    feeId = _i1.ColumnInt(
      'feeId',
      this,
    );
    locationId = _i1.ColumnInt(
      'locationId',
      this,
    );
  }

  late final _i1.ColumnDateTime start;

  late final _i1.ColumnDateTime end;

  late final _i1.ColumnString description;

  _i2.MediaTable? ___medias;

  _i1.ManyRelation<_i2.MediaTable>? _medias;

  late final _i1.ColumnInt feeId;

  _i2.FeeTable? _fee;

  late final _i1.ColumnInt locationId;

  _i2.LocationTable? _location;

  _i2.MediaTable get __medias {
    if (___medias != null) return ___medias!;
    ___medias = _i1.createRelationTable(
      relationFieldName: '__medias',
      field: Product.t.id,
      foreignField: _i2.Media.t.$_productMediasProductId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MediaTable(tableRelation: foreignTableRelation),
    );
    return ___medias!;
  }

  _i2.FeeTable get fee {
    if (_fee != null) return _fee!;
    _fee = _i1.createRelationTable(
      relationFieldName: 'fee',
      field: Product.t.feeId,
      foreignField: _i2.Fee.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.FeeTable(tableRelation: foreignTableRelation),
    );
    return _fee!;
  }

  _i2.LocationTable get location {
    if (_location != null) return _location!;
    _location = _i1.createRelationTable(
      relationFieldName: 'location',
      field: Product.t.locationId,
      foreignField: _i2.Location.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.LocationTable(tableRelation: foreignTableRelation),
    );
    return _location!;
  }

  _i1.ManyRelation<_i2.MediaTable> get medias {
    if (_medias != null) return _medias!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'medias',
      field: Product.t.id,
      foreignField: _i2.Media.t.$_productMediasProductId,
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
        start,
        end,
        description,
        feeId,
        locationId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'medias') {
      return __medias;
    }
    if (relationField == 'fee') {
      return fee;
    }
    if (relationField == 'location') {
      return location;
    }
    return null;
  }
}

class ProductInclude extends _i1.IncludeObject {
  ProductInclude._({
    _i2.MediaIncludeList? medias,
    _i2.FeeInclude? fee,
    _i2.LocationInclude? location,
  }) {
    _medias = medias;
    _fee = fee;
    _location = location;
  }

  _i2.MediaIncludeList? _medias;

  _i2.FeeInclude? _fee;

  _i2.LocationInclude? _location;

  @override
  Map<String, _i1.Include?> get includes => {
        'medias': _medias,
        'fee': _fee,
        'location': _location,
      };

  @override
  _i1.Table get table => Product.t;
}

class ProductIncludeList extends _i1.IncludeList {
  ProductIncludeList._({
    _i1.WhereExpressionBuilder<ProductTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Product.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Product.t;
}

class ProductRepository {
  const ProductRepository._();

  final attach = const ProductAttachRepository._();

  final attachRow = const ProductAttachRowRepository._();

  final detach = const ProductDetachRepository._();

  final detachRow = const ProductDetachRowRepository._();

  Future<List<Product>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    _i1.Transaction? transaction,
    ProductInclude? include,
  }) async {
    return databaseAccessor.db.find<Product>(
      where: where?.call(Product.t),
      orderBy: orderBy?.call(Product.t),
      orderByList: orderByList?.call(Product.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Product?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    _i1.Transaction? transaction,
    ProductInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<Product>(
      where: where?.call(Product.t),
      orderBy: orderBy?.call(Product.t),
      orderByList: orderByList?.call(Product.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Product?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    ProductInclude? include,
  }) async {
    return databaseAccessor.db.findById<Product>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<List<Product>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Product> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Product>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Product> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Product>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Product>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Product> rows, {
    _i1.ColumnSelections<ProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Product>(
      rows,
      columns: columns?.call(Product.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Product> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Product row, {
    _i1.ColumnSelections<ProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Product>(
      row,
      columns: columns?.call(Product.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Product>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Product> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Product>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Product> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Product>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Product>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<ProductTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Product>(
      where: where(Product.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Product>(
      where: where?.call(Product.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class ProductAttachRepository {
  const ProductAttachRepository._();

  Future<void> medias(
    _i1.DatabaseAccessor databaseAccessor,
    Product product,
    List<_i2.Media> media, {
    _i1.Transaction? transaction,
  }) async {
    if (media.any((e) => e.id == null)) {
      throw ArgumentError.notNull('media.id');
    }
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $media = media
        .map((e) => _i2.MediaImplicit(
              e,
              $_productMediasProductId: product.id,
            ))
        .toList();
    await databaseAccessor.db.update<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_productMediasProductId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class ProductAttachRowRepository {
  const ProductAttachRowRepository._();

  Future<void> fee(
    _i1.DatabaseAccessor databaseAccessor,
    Product product,
    _i2.Fee fee, {
    _i1.Transaction? transaction,
  }) async {
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }
    if (fee.id == null) {
      throw ArgumentError.notNull('fee.id');
    }

    var $product = product.copyWith(feeId: fee.id);
    await databaseAccessor.db.updateRow<Product>(
      $product,
      columns: [Product.t.feeId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> location(
    _i1.DatabaseAccessor databaseAccessor,
    Product product,
    _i2.Location location, {
    _i1.Transaction? transaction,
  }) async {
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }
    if (location.id == null) {
      throw ArgumentError.notNull('location.id');
    }

    var $product = product.copyWith(locationId: location.id);
    await databaseAccessor.db.updateRow<Product>(
      $product,
      columns: [Product.t.locationId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> medias(
    _i1.DatabaseAccessor databaseAccessor,
    Product product,
    _i2.Media media, {
    _i1.Transaction? transaction,
  }) async {
    if (media.id == null) {
      throw ArgumentError.notNull('media.id');
    }
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $media = _i2.MediaImplicit(
      media,
      $_productMediasProductId: product.id,
    );
    await databaseAccessor.db.updateRow<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_productMediasProductId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class ProductDetachRepository {
  const ProductDetachRepository._();

  Future<void> medias(
    _i1.DatabaseAccessor databaseAccessor,
    List<_i2.Media> media, {
    _i1.Transaction? transaction,
  }) async {
    if (media.any((e) => e.id == null)) {
      throw ArgumentError.notNull('media.id');
    }

    var $media = media
        .map((e) => _i2.MediaImplicit(
              e,
              $_productMediasProductId: null,
            ))
        .toList();
    await databaseAccessor.db.update<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_productMediasProductId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class ProductDetachRowRepository {
  const ProductDetachRowRepository._();

  Future<void> medias(
    _i1.DatabaseAccessor databaseAccessor,
    _i2.Media media, {
    _i1.Transaction? transaction,
  }) async {
    if (media.id == null) {
      throw ArgumentError.notNull('media.id');
    }

    var $media = _i2.MediaImplicit(
      media,
      $_productMediasProductId: null,
    );
    await databaseAccessor.db.updateRow<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_productMediasProductId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
