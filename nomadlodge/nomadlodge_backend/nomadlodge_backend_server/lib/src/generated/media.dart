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

abstract class Media extends _i1.TableRow {
  Media._({
    int? id,
    required this.url,
    required this.mediaType,
  }) : super(id);

  factory Media({
    int? id,
    required String url,
    required _i2.MediaType mediaType,
  }) = _MediaImpl;

  factory Media.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Media(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      url: serializationManager.deserialize<String>(jsonSerialization['url']),
      mediaType: serializationManager
          .deserialize<_i2.MediaType>(jsonSerialization['mediaType']),
    );
  }

  static final t = MediaTable();

  static const db = MediaRepository._();

  String url;

  _i2.MediaType mediaType;

  int? _locationMediasLocationId;

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
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'url': url,
      'mediaType': mediaType,
      '_locationMediasLocationId': _locationMediasLocationId,
      '_taskImagesTaskId': _taskImagesTaskId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'url': url,
      'mediaType': mediaType.toJson(),
      if (_locationMediasLocationId != null)
        '_locationMediasLocationId': _locationMediasLocationId,
      if (_taskImagesTaskId != null) '_taskImagesTaskId': _taskImagesTaskId,
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
      case 'url':
        url = value;
        return;
      case 'mediaType':
        mediaType = value;
        return;
      case '_locationMediasLocationId':
        _locationMediasLocationId = value;
        return;
      case '_taskImagesTaskId':
        _taskImagesTaskId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Media>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MediaTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Media>(
      where: where != null ? where(Media.t) : null,
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
  static Future<Media?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MediaTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Media>(
      where: where != null ? where(Media.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Media?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Media>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MediaTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Media>(
      where: where(Media.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Media row, {
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
    Media row, {
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
    Media row, {
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
    _i1.WhereExpressionBuilder<MediaTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Media>(
      where: where != null ? where(Media.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
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
    this.$_taskImagesTaskId,
  }) : super(
          id: id,
          url: url,
          mediaType: mediaType,
        );

  factory MediaImplicit(
    Media media, {
    int? $_locationMediasLocationId,
    int? $_taskImagesTaskId,
  }) {
    return MediaImplicit._(
      id: media.id,
      url: media.url,
      mediaType: media.mediaType,
      $_locationMediasLocationId: $_locationMediasLocationId,
      $_taskImagesTaskId: $_taskImagesTaskId,
    );
  }

  int? $_locationMediasLocationId;

  int? $_taskImagesTaskId;

  @override
  Map<String, dynamic> allToJson() {
    var jsonMap = super.allToJson();
    jsonMap.addAll({
      '_locationMediasLocationId': $_locationMediasLocationId,
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
    $_taskImagesTaskId = _i1.ColumnInt(
      '_taskImagesTaskId',
      this,
    );
  }

  late final _i1.ColumnString url;

  late final _i1.ColumnEnum<_i2.MediaType> mediaType;

  late final _i1.ColumnInt $_locationMediasLocationId;

  late final _i1.ColumnInt $_taskImagesTaskId;

  @override
  List<_i1.Column> get columns => [
        id,
        url,
        mediaType,
        $_locationMediasLocationId,
        $_taskImagesTaskId,
      ];
}

@Deprecated('Use MediaTable.t instead.')
MediaTable tMedia = MediaTable();

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
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MediaTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MediaTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MediaTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Media>(
      where: where?.call(Media.t),
      orderBy: orderBy?.call(Media.t),
      orderByList: orderByList?.call(Media.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Media?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MediaTable>? where,
    int? offset,
    _i1.OrderByBuilder<MediaTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MediaTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Media>(
      where: where?.call(Media.t),
      orderBy: orderBy?.call(Media.t),
      orderByList: orderByList?.call(Media.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Media?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Media>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Media>> insert(
    _i1.Session session,
    List<Media> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Media>(
      rows,
      transaction: transaction,
    );
  }

  Future<Media> insertRow(
    _i1.Session session,
    Media row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Media>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Media>> update(
    _i1.Session session,
    List<Media> rows, {
    _i1.ColumnSelections<MediaTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Media>(
      rows,
      columns: columns?.call(Media.t),
      transaction: transaction,
    );
  }

  Future<Media> updateRow(
    _i1.Session session,
    Media row, {
    _i1.ColumnSelections<MediaTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Media>(
      row,
      columns: columns?.call(Media.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Media> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Media>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Media row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Media>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MediaTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Media>(
      where: where(Media.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MediaTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Media>(
      where: where?.call(Media.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
