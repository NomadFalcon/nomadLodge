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

abstract class Task implements _i1.TableRow, _i1.ProtocolSerialization {
  Task._({
    this.id,
    required this.name,
    required this.description,
    required this.isCompleted,
    this.images,
  });

  factory Task({
    int? id,
    required String name,
    required String description,
    required bool isCompleted,
    List<_i2.Media>? images,
  }) = _TaskImpl;

  factory Task.fromJson(Map<String, dynamic> jsonSerialization) {
    return Task(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String,
      isCompleted: jsonSerialization['isCompleted'] as bool,
      images: (jsonSerialization['images'] as List?)
          ?.map((e) => _i2.Media.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = TaskTable();

  static const db = TaskRepository._();

  @override
  int? id;

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
      if (_maintenanceTasksMaintenanceId != null)
        '_maintenanceTasksMaintenanceId': _maintenanceTasksMaintenanceId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'isCompleted': isCompleted,
      if (images != null)
        'images': images?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
      images: images is List<_i2.Media>?
          ? images
          : this.images?.map((e0) => e0.copyWith()).toList(),
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
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
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
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<TaskTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TaskTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaskTable>? orderByList,
    _i1.Transaction? transaction,
    TaskInclude? include,
  }) async {
    return databaseAccessor.db.find<Task>(
      where: where?.call(Task.t),
      orderBy: orderBy?.call(Task.t),
      orderByList: orderByList?.call(Task.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Task?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<TaskTable>? where,
    int? offset,
    _i1.OrderByBuilder<TaskTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaskTable>? orderByList,
    _i1.Transaction? transaction,
    TaskInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<Task>(
      where: where?.call(Task.t),
      orderBy: orderBy?.call(Task.t),
      orderByList: orderByList?.call(Task.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Task?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    TaskInclude? include,
  }) async {
    return databaseAccessor.db.findById<Task>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<List<Task>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Task> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Task>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Task> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Task row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Task>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Task>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Task> rows, {
    _i1.ColumnSelections<TaskTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Task>(
      rows,
      columns: columns?.call(Task.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Task> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Task row, {
    _i1.ColumnSelections<TaskTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Task>(
      row,
      columns: columns?.call(Task.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Task>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Task> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Task>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Task> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Task row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Task>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Task>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<TaskTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Task>(
      where: where(Task.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<TaskTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Task>(
      where: where?.call(Task.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class TaskAttachRepository {
  const TaskAttachRepository._();

  Future<void> images(
    _i1.DatabaseAccessor databaseAccessor,
    Task task,
    List<_i2.Media> media, {
    _i1.Transaction? transaction,
  }) async {
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
    await databaseAccessor.db.update<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_taskImagesTaskId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class TaskAttachRowRepository {
  const TaskAttachRowRepository._();

  Future<void> images(
    _i1.DatabaseAccessor databaseAccessor,
    Task task,
    _i2.Media media, {
    _i1.Transaction? transaction,
  }) async {
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
    await databaseAccessor.db.updateRow<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_taskImagesTaskId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class TaskDetachRepository {
  const TaskDetachRepository._();

  Future<void> images(
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
              $_taskImagesTaskId: null,
            ))
        .toList();
    await databaseAccessor.db.update<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_taskImagesTaskId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class TaskDetachRowRepository {
  const TaskDetachRowRepository._();

  Future<void> images(
    _i1.DatabaseAccessor databaseAccessor,
    _i2.Media media, {
    _i1.Transaction? transaction,
  }) async {
    if (media.id == null) {
      throw ArgumentError.notNull('media.id');
    }

    var $media = _i2.MediaImplicit(
      media,
      $_taskImagesTaskId: null,
    );
    await databaseAccessor.db.updateRow<_i2.Media>(
      $media,
      columns: [_i2.Media.t.$_taskImagesTaskId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
