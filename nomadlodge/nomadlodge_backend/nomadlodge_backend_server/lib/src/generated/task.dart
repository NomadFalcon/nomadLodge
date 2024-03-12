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

abstract class Task extends _i1.TableRow {
  Task._({
    int? id,
    required this.name,
    required this.description,
    required this.isCompleted,
    this.images,
  }) : super(id);

  factory Task({
    int? id,
    required String name,
    required String description,
    required bool isCompleted,
    List<_i2.Media>? images,
  }) = _TaskImpl;

  factory Task.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Task(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      isCompleted: serializationManager
          .deserialize<bool>(jsonSerialization['isCompleted']),
      images: serializationManager
          .deserialize<List<_i2.Media>?>(jsonSerialization['images']),
    );
  }

  static final t = TaskTable();

  static const db = TaskRepository._();

  String name;

  String description;

  bool isCompleted;

  List<_i2.Media>? images;

  int? _maintenanceTasksMaintenanceId;

  @override
  _i1.Table get table => t;

  Task copyWith({
    int? id,
    String? name,
    String? description,
    bool? isCompleted,
    List<_i2.Media>? images,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'isCompleted': isCompleted,
      if (images != null)
        'images': images?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'isCompleted': isCompleted,
      '_maintenanceTasksMaintenanceId': _maintenanceTasksMaintenanceId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'isCompleted': isCompleted,
      if (images != null)
        'images': images?.toJson(valueToJson: (v) => v.allToJson()),
      if (_maintenanceTasksMaintenanceId != null)
        '_maintenanceTasksMaintenanceId': _maintenanceTasksMaintenanceId,
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
      case 'isCompleted':
        isCompleted = value;
        return;
      case '_maintenanceTasksMaintenanceId':
        _maintenanceTasksMaintenanceId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Task>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaskTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    TaskInclude? include,
  }) async {
    return session.db.find<Task>(
      where: where != null ? where(Task.t) : null,
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
  static Future<Task?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaskTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    TaskInclude? include,
  }) async {
    return session.db.findSingleRow<Task>(
      where: where != null ? where(Task.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Task?> findById(
    _i1.Session session,
    int id, {
    TaskInclude? include,
  }) async {
    return session.db.findById<Task>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TaskTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Task>(
      where: where(Task.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Task row, {
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
    Task row, {
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
    Task row, {
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
    _i1.WhereExpressionBuilder<TaskTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Task>(
      where: where != null ? where(Task.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static TaskInclude include({_i2.MediaIncludeList? images}) {
    return TaskInclude._(images: images);
  }

  static TaskIncludeList includeList({
    _i1.WhereExpressionBuilder<TaskTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TaskTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaskTable>? orderByList,
    TaskInclude? include,
  }) {
    return TaskIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Task.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Task.t),
      include: include,
    );
  }
}

class _Undefined {}

class _TaskImpl extends Task {
  _TaskImpl({
    int? id,
    required String name,
    required String description,
    required bool isCompleted,
    List<_i2.Media>? images,
  }) : super._(
          id: id,
          name: name,
          description: description,
          isCompleted: isCompleted,
          images: images,
        );

  @override
  Task copyWith({
    Object? id = _Undefined,
    String? name,
    String? description,
    bool? isCompleted,
    Object? images = _Undefined,
  }) {
    return Task(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
      images: images is List<_i2.Media>? ? images : this.images?.clone(),
    );
  }
}

class TaskImplicit extends _TaskImpl {
  TaskImplicit._({
    int? id,
    required String name,
    required String description,
    required bool isCompleted,
    List<_i2.Media>? images,
    this.$_maintenanceTasksMaintenanceId,
  }) : super(
          id: id,
          name: name,
          description: description,
          isCompleted: isCompleted,
          images: images,
        );

  factory TaskImplicit(
    Task task, {
    int? $_maintenanceTasksMaintenanceId,
  }) {
    return TaskImplicit._(
      id: task.id,
      name: task.name,
      description: task.description,
      isCompleted: task.isCompleted,
      images: task.images,
      $_maintenanceTasksMaintenanceId: $_maintenanceTasksMaintenanceId,
    );
  }

  int? $_maintenanceTasksMaintenanceId;

  @override
  Map<String, dynamic> allToJson() {
    var jsonMap = super.allToJson();
    jsonMap.addAll(
        {'_maintenanceTasksMaintenanceId': $_maintenanceTasksMaintenanceId});
    return jsonMap;
  }
}

class TaskTable extends _i1.Table {
  TaskTable({super.tableRelation}) : super(tableName: 'task') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    isCompleted = _i1.ColumnBool(
      'isCompleted',
      this,
    );
    $_maintenanceTasksMaintenanceId = _i1.ColumnInt(
      '_maintenanceTasksMaintenanceId',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnBool isCompleted;

  _i2.MediaTable? ___images;

  _i1.ManyRelation<_i2.MediaTable>? _images;

  late final _i1.ColumnInt $_maintenanceTasksMaintenanceId;

  _i2.MediaTable get __images {
    if (___images != null) return ___images!;
    ___images = _i1.createRelationTable(
      relationFieldName: '__images',
      field: Task.t.id,
      foreignField: _i2.Media.t.$_taskImagesTaskId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MediaTable(tableRelation: foreignTableRelation),
    );
    return ___images!;
  }

  _i1.ManyRelation<_i2.MediaTable> get images {
    if (_images != null) return _images!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'images',
      field: Task.t.id,
      foreignField: _i2.Media.t.$_taskImagesTaskId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MediaTable(tableRelation: foreignTableRelation),
    );
    _images = _i1.ManyRelation<_i2.MediaTable>(
      tableWithRelations: relationTable,
      table: _i2.MediaTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _images!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        description,
        isCompleted,
        $_maintenanceTasksMaintenanceId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'images') {
      return __images;
    }
    return null;
  }
}

@Deprecated('Use TaskTable.t instead.')
TaskTable tTask = TaskTable();

class TaskInclude extends _i1.IncludeObject {
  TaskInclude._({_i2.MediaIncludeList? images}) {
    _images = images;
  }

  _i2.MediaIncludeList? _images;

  @override
  Map<String, _i1.Include?> get includes => {'images': _images};

  @override
  _i1.Table get table => Task.t;
}

class TaskIncludeList extends _i1.IncludeList {
  TaskIncludeList._({
    _i1.WhereExpressionBuilder<TaskTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Task.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Task.t;
}

class TaskRepository {
  const TaskRepository._();

  final attach = const TaskAttachRepository._();

  final attachRow = const TaskAttachRowRepository._();

  final detach = const TaskDetachRepository._();

  final detachRow = const TaskDetachRowRepository._();

  Future<List<Task>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaskTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TaskTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaskTable>? orderByList,
    _i1.Transaction? transaction,
    TaskInclude? include,
  }) async {
    return session.dbNext.find<Task>(
      where: where?.call(Task.t),
      orderBy: orderBy?.call(Task.t),
      orderByList: orderByList?.call(Task.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Task?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaskTable>? where,
    int? offset,
    _i1.OrderByBuilder<TaskTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaskTable>? orderByList,
    _i1.Transaction? transaction,
    TaskInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Task>(
      where: where?.call(Task.t),
      orderBy: orderBy?.call(Task.t),
      orderByList: orderByList?.call(Task.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Task?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    TaskInclude? include,
  }) async {
    return session.dbNext.findById<Task>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Task>> insert(
    _i1.Session session,
    List<Task> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Task>(
      rows,
      transaction: transaction,
    );
  }

  Future<Task> insertRow(
    _i1.Session session,
    Task row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Task>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Task>> update(
    _i1.Session session,
    List<Task> rows, {
    _i1.ColumnSelections<TaskTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Task>(
      rows,
      columns: columns?.call(Task.t),
      transaction: transaction,
    );
  }

  Future<Task> updateRow(
    _i1.Session session,
    Task row, {
    _i1.ColumnSelections<TaskTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Task>(
      row,
      columns: columns?.call(Task.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Task> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Task>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Task row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Task>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TaskTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Task>(
      where: where(Task.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaskTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Task>(
      where: where?.call(Task.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class TaskAttachRepository {
  const TaskAttachRepository._();

  Future<void> images(
    _i1.Session session,
    Task task,
    List<_i2.Media> media,
  ) async {
    if (media.any((e) => e.id == null)) {
      throw ArgumentError.notNull('media.id');
    }
    if (task.id == null) {
      throw ArgumentError.notNull('task.id');
    }

    var $media = media
        .map((e) => _i2.MediaImplicit(
              e,
              $_taskImagesTaskId: task.id,
            ))
        .toList();
    await session.dbNext.update<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_taskImagesTaskId],
    );
  }
}

class TaskAttachRowRepository {
  const TaskAttachRowRepository._();

  Future<void> images(
    _i1.Session session,
    Task task,
    _i2.Media media,
  ) async {
    if (media.id == null) {
      throw ArgumentError.notNull('media.id');
    }
    if (task.id == null) {
      throw ArgumentError.notNull('task.id');
    }

    var $media = _i2.MediaImplicit(
      media,
      $_taskImagesTaskId: task.id,
    );
    await session.dbNext.updateRow<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_taskImagesTaskId],
    );
  }
}

class TaskDetachRepository {
  const TaskDetachRepository._();

  Future<void> images(
    _i1.Session session,
    List<_i2.Media> media,
  ) async {
    if (media.any((e) => e.id == null)) {
      throw ArgumentError.notNull('media.id');
    }

    var $media = media
        .map((e) => _i2.MediaImplicit(
              e,
              $_taskImagesTaskId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_taskImagesTaskId],
    );
  }
}

class TaskDetachRowRepository {
  const TaskDetachRowRepository._();

  Future<void> images(
    _i1.Session session,
    _i2.Media media,
  ) async {
    if (media.id == null) {
      throw ArgumentError.notNull('media.id');
    }

    var $media = _i2.MediaImplicit(
      media,
      $_taskImagesTaskId: null,
    );
    await session.dbNext.updateRow<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_taskImagesTaskId],
    );
  }
}
