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

abstract class Media implements _i1.TableRow, _i1.ProtocolSerialization {
  Media._({
    this.id,
    required this.url,
    required this.mediaType,
  });

  factory Media({
    int? id,
    required String url,
    required _i2.MediaType mediaType,
  }) = _MediaImpl;

  factory Media.fromJson(Map<String, dynamic> jsonSerialization) {
    return Media(
      id: jsonSerialization['id'] as int?,
      url: jsonSerialization['url'] as String,
      mediaType:
          _i2.MediaType.fromJson((jsonSerialization['mediaType'] as String)),
    );
  }

  static final t = MediaTable();

  static const db = MediaRepository._();

  @override
  int? id;

  String url;

  _i2.MediaType mediaType;

  int? _locationMediasLocationId;

  int? _productMediasProductId;

  int? _taskImagesTaskId;

  @override
  _i1.Table get table => t;

  Media copyWith({
    int? id,
    String? url,
    _i2.MediaType? mediaType,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'url': url,
      'mediaType': mediaType.toJson(),
      if (_locationMediasLocationId != null)
        '_locationMediasLocationId': _locationMediasLocationId,
      if (_productMediasProductId != null)
        '_productMediasProductId': _productMediasProductId,
      if (_taskImagesTaskId != null) '_taskImagesTaskId': _taskImagesTaskId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'url': url,
      'mediaType': mediaType.toJson(),
    };
  }

  static MediaInclude include() {
    return MediaInclude._();
  }

  static MediaIncludeList includeList({
    _i1.WhereExpressionBuilder<MediaTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MediaTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MediaTable>? orderByList,
    MediaInclude? include,
  }) {
    return MediaIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Media.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Media.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MediaImpl extends Media {
  _MediaImpl({
    int? id,
    required String url,
    required _i2.MediaType mediaType,
  }) : super._(
          id: id,
          url: url,
          mediaType: mediaType,
        );

  @override
  Media copyWith({
    Object? id = _Undefined,
    String? url,
    _i2.MediaType? mediaType,
  }) {
    return Media(
      id: id is int? ? id : this.id,
      url: url ?? this.url,
      mediaType: mediaType ?? this.mediaType,
    );
  }
}

class MediaImplicit extends _MediaImpl {
  MediaImplicit._({
    int? id,
    required String url,
    required _i2.MediaType mediaType,
    this.$_locationMediasLocationId,
    this.$_productMediasProductId,
    this.$_taskImagesTaskId,
  }) : super(
          id: id,
          url: url,
          mediaType: mediaType,
        );

  factory MediaImplicit(
    Media media, {
    int? $_locationMediasLocationId,
    int? $_productMediasProductId,
    int? $_taskImagesTaskId,
  }) {
    return MediaImplicit._(
      id: media.id,
      url: media.url,
      mediaType: media.mediaType,
      $_locationMediasLocationId: $_locationMediasLocationId,
      $_productMediasProductId: $_productMediasProductId,
      $_taskImagesTaskId: $_taskImagesTaskId,
    );
  }

  int? $_locationMediasLocationId;

  int? $_productMediasProductId;

  int? $_taskImagesTaskId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({
      '_locationMediasLocationId': $_locationMediasLocationId,
      '_productMediasProductId': $_productMediasProductId,
      '_taskImagesTaskId': $_taskImagesTaskId
    });
    return jsonMap;
  }
}

class MediaTable extends _i1.Table {
  MediaTable({super.tableRelation}) : super(tableName: 'media') {
    url = _i1.ColumnString(
      'url',
      this,
    );
    mediaType = _i1.ColumnEnum(
      'mediaType',
      this,
      _i1.EnumSerialization.byName,
    );
    $_locationMediasLocationId = _i1.ColumnInt(
      '_locationMediasLocationId',
      this,
    );
    $_productMediasProductId = _i1.ColumnInt(
      '_productMediasProductId',
      this,
    );
    $_taskImagesTaskId = _i1.ColumnInt(
      '_taskImagesTaskId',
      this,
    );
  }

  late final _i1.ColumnString url;

  late final _i1.ColumnEnum<_i2.MediaType> mediaType;

  late final _i1.ColumnInt $_locationMediasLocationId;

  late final _i1.ColumnInt $_productMediasProductId;

  late final _i1.ColumnInt $_taskImagesTaskId;

  @override
  List<_i1.Column> get columns => [
        id,
        url,
        mediaType,
        $_locationMediasLocationId,
        $_productMediasProductId,
        $_taskImagesTaskId,
      ];
}

class MediaInclude extends _i1.IncludeObject {
  MediaInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Media.t;
}

class MediaIncludeList extends _i1.IncludeList {
  MediaIncludeList._({
    _i1.WhereExpressionBuilder<MediaTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Media.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Media.t;
}

class MediaRepository {
  const MediaRepository._();

  Future<List<Media>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<MediaTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MediaTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MediaTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<Media>(
      where: where?.call(Media.t),
      orderBy: orderBy?.call(Media.t),
      orderByList: orderByList?.call(Media.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Media?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<MediaTable>? where,
    int? offset,
    _i1.OrderByBuilder<MediaTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MediaTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<Media>(
      where: where?.call(Media.t),
      orderBy: orderBy?.call(Media.t),
      orderByList: orderByList?.call(Media.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Media?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<Media>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Media>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Media> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Media>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Media> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Media row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Media>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Media>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Media> rows, {
    _i1.ColumnSelections<MediaTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Media>(
      rows,
      columns: columns?.call(Media.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Media> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Media row, {
    _i1.ColumnSelections<MediaTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Media>(
      row,
      columns: columns?.call(Media.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Media>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Media> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Media>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Media> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Media row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Media>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Media>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<MediaTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Media>(
      where: where(Media.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<MediaTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Media>(
      where: where?.call(Media.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
