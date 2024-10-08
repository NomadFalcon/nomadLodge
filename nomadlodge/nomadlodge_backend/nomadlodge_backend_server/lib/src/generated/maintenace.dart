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

abstract class Maintenance extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Maintenance._({
    int? id,
    required this.maintenancetypeId,
    this.maintenancetype,
    required this.start,
    this.end,
    required this.description,
    this.tasks,
    required this.userId,
    this.user,
    required this.feeId,
    this.fee,
    required this.locationId,
    this.location,
  }) : super(id);

  factory Maintenance({
    int? id,
    required int maintenancetypeId,
    _i2.Maintenancetype? maintenancetype,
    required DateTime start,
    DateTime? end,
    required String description,
    List<_i2.Task>? tasks,
    required int userId,
    _i2.User? user,
    required int feeId,
    _i2.Fee? fee,
    required int locationId,
    _i2.Location? location,
  }) = _MaintenanceImpl;

  factory Maintenance.fromJson(Map<String, dynamic> jsonSerialization) {
    return Maintenance(
      id: jsonSerialization['id'] as int?,
      maintenancetypeId: jsonSerialization['maintenancetypeId'] as int,
      maintenancetype: jsonSerialization['maintenancetype'] == null
          ? null
          : _i2.Maintenancetype.fromJson(
              (jsonSerialization['maintenancetype'] as Map<String, dynamic>)),
      start: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['start']),
      end: jsonSerialization['end'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['end']),
      description: jsonSerialization['description'] as String,
      tasks: (jsonSerialization['tasks'] as List?)
          ?.map((e) => _i2.Task.fromJson((e as Map<String, dynamic>)))
          .toList(),
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
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

  static final t = MaintenanceTable();

  static const db = MaintenanceRepository._();

  int maintenancetypeId;

  _i2.Maintenancetype? maintenancetype;

  DateTime start;

  DateTime? end;

  String description;

  List<_i2.Task>? tasks;

  int userId;

  _i2.User? user;

  int feeId;

  _i2.Fee? fee;

  int locationId;

  _i2.Location? location;

  @override
  _i1.Table get table => t;

  Maintenance copyWith({
    int? id,
    int? maintenancetypeId,
    _i2.Maintenancetype? maintenancetype,
    DateTime? start,
    DateTime? end,
    String? description,
    List<_i2.Task>? tasks,
    int? userId,
    _i2.User? user,
    int? feeId,
    _i2.Fee? fee,
    int? locationId,
    _i2.Location? location,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'maintenancetypeId': maintenancetypeId,
      if (maintenancetype != null) 'maintenancetype': maintenancetype?.toJson(),
      'start': start.toJson(),
      if (end != null) 'end': end?.toJson(),
      'description': description,
      if (tasks != null) 'tasks': tasks?.toJson(valueToJson: (v) => v.toJson()),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
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
      'maintenancetypeId': maintenancetypeId,
      if (maintenancetype != null)
        'maintenancetype': maintenancetype?.toJsonForProtocol(),
      'start': start.toJson(),
      if (end != null) 'end': end?.toJson(),
      'description': description,
      if (tasks != null)
        'tasks': tasks?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'feeId': feeId,
      if (fee != null) 'fee': fee?.toJsonForProtocol(),
      'locationId': locationId,
      if (location != null) 'location': location?.toJsonForProtocol(),
    };
  }

  static MaintenanceInclude include({
    _i2.MaintenancetypeInclude? maintenancetype,
    _i2.TaskIncludeList? tasks,
    _i2.UserInclude? user,
    _i2.FeeInclude? fee,
    _i2.LocationInclude? location,
  }) {
    return MaintenanceInclude._(
      maintenancetype: maintenancetype,
      tasks: tasks,
      user: user,
      fee: fee,
      location: location,
    );
  }

  static MaintenanceIncludeList includeList({
    _i1.WhereExpressionBuilder<MaintenanceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MaintenanceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MaintenanceTable>? orderByList,
    MaintenanceInclude? include,
  }) {
    return MaintenanceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Maintenance.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Maintenance.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MaintenanceImpl extends Maintenance {
  _MaintenanceImpl({
    int? id,
    required int maintenancetypeId,
    _i2.Maintenancetype? maintenancetype,
    required DateTime start,
    DateTime? end,
    required String description,
    List<_i2.Task>? tasks,
    required int userId,
    _i2.User? user,
    required int feeId,
    _i2.Fee? fee,
    required int locationId,
    _i2.Location? location,
  }) : super._(
          id: id,
          maintenancetypeId: maintenancetypeId,
          maintenancetype: maintenancetype,
          start: start,
          end: end,
          description: description,
          tasks: tasks,
          userId: userId,
          user: user,
          feeId: feeId,
          fee: fee,
          locationId: locationId,
          location: location,
        );

  @override
  Maintenance copyWith({
    Object? id = _Undefined,
    int? maintenancetypeId,
    Object? maintenancetype = _Undefined,
    DateTime? start,
    Object? end = _Undefined,
    String? description,
    Object? tasks = _Undefined,
    int? userId,
    Object? user = _Undefined,
    int? feeId,
    Object? fee = _Undefined,
    int? locationId,
    Object? location = _Undefined,
  }) {
    return Maintenance(
      id: id is int? ? id : this.id,
      maintenancetypeId: maintenancetypeId ?? this.maintenancetypeId,
      maintenancetype: maintenancetype is _i2.Maintenancetype?
          ? maintenancetype
          : this.maintenancetype?.copyWith(),
      start: start ?? this.start,
      end: end is DateTime? ? end : this.end,
      description: description ?? this.description,
      tasks: tasks is List<_i2.Task>?
          ? tasks
          : this.tasks?.map((e0) => e0.copyWith()).toList(),
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      feeId: feeId ?? this.feeId,
      fee: fee is _i2.Fee? ? fee : this.fee?.copyWith(),
      locationId: locationId ?? this.locationId,
      location:
          location is _i2.Location? ? location : this.location?.copyWith(),
    );
  }
}

class MaintenanceTable extends _i1.Table {
  MaintenanceTable({super.tableRelation}) : super(tableName: 'maintenance') {
    maintenancetypeId = _i1.ColumnInt(
      'maintenancetypeId',
      this,
    );
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
    userId = _i1.ColumnInt(
      'userId',
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

  late final _i1.ColumnInt maintenancetypeId;

  _i2.MaintenancetypeTable? _maintenancetype;

  late final _i1.ColumnDateTime start;

  late final _i1.ColumnDateTime end;

  late final _i1.ColumnString description;

  _i2.TaskTable? ___tasks;

  _i1.ManyRelation<_i2.TaskTable>? _tasks;

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  late final _i1.ColumnInt feeId;

  _i2.FeeTable? _fee;

  late final _i1.ColumnInt locationId;

  _i2.LocationTable? _location;

  _i2.MaintenancetypeTable get maintenancetype {
    if (_maintenancetype != null) return _maintenancetype!;
    _maintenancetype = _i1.createRelationTable(
      relationFieldName: 'maintenancetype',
      field: Maintenance.t.maintenancetypeId,
      foreignField: _i2.Maintenancetype.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MaintenancetypeTable(tableRelation: foreignTableRelation),
    );
    return _maintenancetype!;
  }

  _i2.TaskTable get __tasks {
    if (___tasks != null) return ___tasks!;
    ___tasks = _i1.createRelationTable(
      relationFieldName: '__tasks',
      field: Maintenance.t.id,
      foreignField: _i2.Task.t.$_maintenanceTasksMaintenanceId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TaskTable(tableRelation: foreignTableRelation),
    );
    return ___tasks!;
  }

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Maintenance.t.userId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i2.FeeTable get fee {
    if (_fee != null) return _fee!;
    _fee = _i1.createRelationTable(
      relationFieldName: 'fee',
      field: Maintenance.t.feeId,
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
      field: Maintenance.t.locationId,
      foreignField: _i2.Location.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.LocationTable(tableRelation: foreignTableRelation),
    );
    return _location!;
  }

  _i1.ManyRelation<_i2.TaskTable> get tasks {
    if (_tasks != null) return _tasks!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'tasks',
      field: Maintenance.t.id,
      foreignField: _i2.Task.t.$_maintenanceTasksMaintenanceId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TaskTable(tableRelation: foreignTableRelation),
    );
    _tasks = _i1.ManyRelation<_i2.TaskTable>(
      tableWithRelations: relationTable,
      table: _i2.TaskTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _tasks!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        maintenancetypeId,
        start,
        end,
        description,
        userId,
        feeId,
        locationId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'maintenancetype') {
      return maintenancetype;
    }
    if (relationField == 'tasks') {
      return __tasks;
    }
    if (relationField == 'user') {
      return user;
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

class MaintenanceInclude extends _i1.IncludeObject {
  MaintenanceInclude._({
    _i2.MaintenancetypeInclude? maintenancetype,
    _i2.TaskIncludeList? tasks,
    _i2.UserInclude? user,
    _i2.FeeInclude? fee,
    _i2.LocationInclude? location,
  }) {
    _maintenancetype = maintenancetype;
    _tasks = tasks;
    _user = user;
    _fee = fee;
    _location = location;
  }

  _i2.MaintenancetypeInclude? _maintenancetype;

  _i2.TaskIncludeList? _tasks;

  _i2.UserInclude? _user;

  _i2.FeeInclude? _fee;

  _i2.LocationInclude? _location;

  @override
  Map<String, _i1.Include?> get includes => {
        'maintenancetype': _maintenancetype,
        'tasks': _tasks,
        'user': _user,
        'fee': _fee,
        'location': _location,
      };

  @override
  _i1.Table get table => Maintenance.t;
}

class MaintenanceIncludeList extends _i1.IncludeList {
  MaintenanceIncludeList._({
    _i1.WhereExpressionBuilder<MaintenanceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Maintenance.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Maintenance.t;
}

class MaintenanceRepository {
  const MaintenanceRepository._();

  final attach = const MaintenanceAttachRepository._();

  final attachRow = const MaintenanceAttachRowRepository._();

  final detach = const MaintenanceDetachRepository._();

  final detachRow = const MaintenanceDetachRowRepository._();

  Future<List<Maintenance>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MaintenanceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MaintenanceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MaintenanceTable>? orderByList,
    _i1.Transaction? transaction,
    MaintenanceInclude? include,
  }) async {
    return session.db.find<Maintenance>(
      where: where?.call(Maintenance.t),
      orderBy: orderBy?.call(Maintenance.t),
      orderByList: orderByList?.call(Maintenance.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Maintenance?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MaintenanceTable>? where,
    int? offset,
    _i1.OrderByBuilder<MaintenanceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MaintenanceTable>? orderByList,
    _i1.Transaction? transaction,
    MaintenanceInclude? include,
  }) async {
    return session.db.findFirstRow<Maintenance>(
      where: where?.call(Maintenance.t),
      orderBy: orderBy?.call(Maintenance.t),
      orderByList: orderByList?.call(Maintenance.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Maintenance?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    MaintenanceInclude? include,
  }) async {
    return session.db.findById<Maintenance>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Maintenance>> insert(
    _i1.Session session,
    List<Maintenance> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Maintenance>(
      rows,
      transaction: transaction,
    );
  }

  Future<Maintenance> insertRow(
    _i1.Session session,
    Maintenance row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Maintenance>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Maintenance>> update(
    _i1.Session session,
    List<Maintenance> rows, {
    _i1.ColumnSelections<MaintenanceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Maintenance>(
      rows,
      columns: columns?.call(Maintenance.t),
      transaction: transaction,
    );
  }

  Future<Maintenance> updateRow(
    _i1.Session session,
    Maintenance row, {
    _i1.ColumnSelections<MaintenanceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Maintenance>(
      row,
      columns: columns?.call(Maintenance.t),
      transaction: transaction,
    );
  }

  Future<List<Maintenance>> delete(
    _i1.Session session,
    List<Maintenance> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Maintenance>(
      rows,
      transaction: transaction,
    );
  }

  Future<Maintenance> deleteRow(
    _i1.Session session,
    Maintenance row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Maintenance>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Maintenance>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MaintenanceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Maintenance>(
      where: where(Maintenance.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MaintenanceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Maintenance>(
      where: where?.call(Maintenance.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class MaintenanceAttachRepository {
  const MaintenanceAttachRepository._();

  Future<void> tasks(
    _i1.Session session,
    Maintenance maintenance,
    List<_i2.Task> task, {
    _i1.Transaction? transaction,
  }) async {
    if (task.any((e) => e.id == null)) {
      throw ArgumentError.notNull('task.id');
    }
    if (maintenance.id == null) {
      throw ArgumentError.notNull('maintenance.id');
    }

    var $task = task
        .map((e) => _i2.TaskImplicit(
              e,
              $_maintenanceTasksMaintenanceId: maintenance.id,
            ))
        .toList();
    await session.db.update<_i2.Task>(
      $task,
      columns: [_i2.Task.t.$_maintenanceTasksMaintenanceId],
      transaction: transaction,
    );
  }
}

class MaintenanceAttachRowRepository {
  const MaintenanceAttachRowRepository._();

  Future<void> maintenancetype(
    _i1.Session session,
    Maintenance maintenance,
    _i2.Maintenancetype maintenancetype, {
    _i1.Transaction? transaction,
  }) async {
    if (maintenance.id == null) {
      throw ArgumentError.notNull('maintenance.id');
    }
    if (maintenancetype.id == null) {
      throw ArgumentError.notNull('maintenancetype.id');
    }

    var $maintenance =
        maintenance.copyWith(maintenancetypeId: maintenancetype.id);
    await session.db.updateRow<Maintenance>(
      $maintenance,
      columns: [Maintenance.t.maintenancetypeId],
      transaction: transaction,
    );
  }

  Future<void> user(
    _i1.Session session,
    Maintenance maintenance,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (maintenance.id == null) {
      throw ArgumentError.notNull('maintenance.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $maintenance = maintenance.copyWith(userId: user.id);
    await session.db.updateRow<Maintenance>(
      $maintenance,
      columns: [Maintenance.t.userId],
      transaction: transaction,
    );
  }

  Future<void> fee(
    _i1.Session session,
    Maintenance maintenance,
    _i2.Fee fee, {
    _i1.Transaction? transaction,
  }) async {
    if (maintenance.id == null) {
      throw ArgumentError.notNull('maintenance.id');
    }
    if (fee.id == null) {
      throw ArgumentError.notNull('fee.id');
    }

    var $maintenance = maintenance.copyWith(feeId: fee.id);
    await session.db.updateRow<Maintenance>(
      $maintenance,
      columns: [Maintenance.t.feeId],
      transaction: transaction,
    );
  }

  Future<void> location(
    _i1.Session session,
    Maintenance maintenance,
    _i2.Location location, {
    _i1.Transaction? transaction,
  }) async {
    if (maintenance.id == null) {
      throw ArgumentError.notNull('maintenance.id');
    }
    if (location.id == null) {
      throw ArgumentError.notNull('location.id');
    }

    var $maintenance = maintenance.copyWith(locationId: location.id);
    await session.db.updateRow<Maintenance>(
      $maintenance,
      columns: [Maintenance.t.locationId],
      transaction: transaction,
    );
  }

  Future<void> tasks(
    _i1.Session session,
    Maintenance maintenance,
    _i2.Task task, {
    _i1.Transaction? transaction,
  }) async {
    if (task.id == null) {
      throw ArgumentError.notNull('task.id');
    }
    if (maintenance.id == null) {
      throw ArgumentError.notNull('maintenance.id');
    }

    var $task = _i2.TaskImplicit(
      task,
      $_maintenanceTasksMaintenanceId: maintenance.id,
    );
    await session.db.updateRow<_i2.Task>(
      $task,
      columns: [_i2.Task.t.$_maintenanceTasksMaintenanceId],
      transaction: transaction,
    );
  }
}

class MaintenanceDetachRepository {
  const MaintenanceDetachRepository._();

  Future<void> tasks(
    _i1.Session session,
    List<_i2.Task> task, {
    _i1.Transaction? transaction,
  }) async {
    if (task.any((e) => e.id == null)) {
      throw ArgumentError.notNull('task.id');
    }

    var $task = task
        .map((e) => _i2.TaskImplicit(
              e,
              $_maintenanceTasksMaintenanceId: null,
            ))
        .toList();
    await session.db.update<_i2.Task>(
      $task,
      columns: [_i2.Task.t.$_maintenanceTasksMaintenanceId],
      transaction: transaction,
    );
  }
}

class MaintenanceDetachRowRepository {
  const MaintenanceDetachRowRepository._();

  Future<void> tasks(
    _i1.Session session,
    _i2.Task task, {
    _i1.Transaction? transaction,
  }) async {
    if (task.id == null) {
      throw ArgumentError.notNull('task.id');
    }

    var $task = _i2.TaskImplicit(
      task,
      $_maintenanceTasksMaintenanceId: null,
    );
    await session.db.updateRow<_i2.Task>(
      $task,
      columns: [_i2.Task.t.$_maintenanceTasksMaintenanceId],
      transaction: transaction,
    );
  }
}
