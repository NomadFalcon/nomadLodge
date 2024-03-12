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

abstract class Booking extends _i1.TableRow {
  Booking._({
    int? id,
    required this.platform,
    required this.start,
    required this.end,
    required this.userId,
    this.user,
    required this.locationId,
    this.location,
  }) : super(id);

  factory Booking({
    int? id,
    required String platform,
    required DateTime start,
    required DateTime end,
    required int userId,
    _i2.User? user,
    required int locationId,
    _i2.Location? location,
  }) = _BookingImpl;

  factory Booking.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Booking(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      platform: serializationManager
          .deserialize<String>(jsonSerialization['platform']),
      start: serializationManager
          .deserialize<DateTime>(jsonSerialization['start']),
      end: serializationManager.deserialize<DateTime>(jsonSerialization['end']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['user']),
      locationId: serializationManager
          .deserialize<int>(jsonSerialization['locationId']),
      location: serializationManager
          .deserialize<_i2.Location?>(jsonSerialization['location']),
    );
  }

  static final t = BookingTable();

  static const db = BookingRepository._();

  String platform;

  DateTime start;

  DateTime end;

  int userId;

  _i2.User? user;

  int locationId;

  _i2.Location? location;

  @override
  _i1.Table get table => t;

  Booking copyWith({
    int? id,
    String? platform,
    DateTime? start,
    DateTime? end,
    int? userId,
    _i2.User? user,
    int? locationId,
    _i2.Location? location,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'platform': platform,
      'start': start.toJson(),
      'end': end.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'locationId': locationId,
      if (location != null) 'location': location?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'platform': platform,
      'start': start,
      'end': end,
      'userId': userId,
      'locationId': locationId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'platform': platform,
      'start': start.toJson(),
      'end': end.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.allToJson(),
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
      case 'platform':
        platform = value;
        return;
      case 'start':
        start = value;
        return;
      case 'end':
        end = value;
        return;
      case 'userId':
        userId = value;
        return;
      case 'locationId':
        locationId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Booking>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookingTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookingInclude? include,
  }) async {
    return session.db.find<Booking>(
      where: where != null ? where(Booking.t) : null,
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
  static Future<Booking?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookingTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookingInclude? include,
  }) async {
    return session.db.findSingleRow<Booking>(
      where: where != null ? where(Booking.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Booking?> findById(
    _i1.Session session,
    int id, {
    BookingInclude? include,
  }) async {
    return session.db.findById<Booking>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Booking>(
      where: where(Booking.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Booking row, {
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
    Booking row, {
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
    Booking row, {
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
    _i1.WhereExpressionBuilder<BookingTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Booking>(
      where: where != null ? where(Booking.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookingInclude include({
    _i2.UserInclude? user,
    _i2.LocationInclude? location,
  }) {
    return BookingInclude._(
      user: user,
      location: location,
    );
  }

  static BookingIncludeList includeList({
    _i1.WhereExpressionBuilder<BookingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookingTable>? orderByList,
    BookingInclude? include,
  }) {
    return BookingIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Booking.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Booking.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookingImpl extends Booking {
  _BookingImpl({
    int? id,
    required String platform,
    required DateTime start,
    required DateTime end,
    required int userId,
    _i2.User? user,
    required int locationId,
    _i2.Location? location,
  }) : super._(
          id: id,
          platform: platform,
          start: start,
          end: end,
          userId: userId,
          user: user,
          locationId: locationId,
          location: location,
        );

  @override
  Booking copyWith({
    Object? id = _Undefined,
    String? platform,
    DateTime? start,
    DateTime? end,
    int? userId,
    Object? user = _Undefined,
    int? locationId,
    Object? location = _Undefined,
  }) {
    return Booking(
      id: id is int? ? id : this.id,
      platform: platform ?? this.platform,
      start: start ?? this.start,
      end: end ?? this.end,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      locationId: locationId ?? this.locationId,
      location:
          location is _i2.Location? ? location : this.location?.copyWith(),
    );
  }
}

class BookingTable extends _i1.Table {
  BookingTable({super.tableRelation}) : super(tableName: 'booking') {
    platform = _i1.ColumnString(
      'platform',
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
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    locationId = _i1.ColumnInt(
      'locationId',
      this,
    );
  }

  late final _i1.ColumnString platform;

  late final _i1.ColumnDateTime start;

  late final _i1.ColumnDateTime end;

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  late final _i1.ColumnInt locationId;

  _i2.LocationTable? _location;

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Booking.t.userId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i2.LocationTable get location {
    if (_location != null) return _location!;
    _location = _i1.createRelationTable(
      relationFieldName: 'location',
      field: Booking.t.locationId,
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
        platform,
        start,
        end,
        userId,
        locationId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'location') {
      return location;
    }
    return null;
  }
}

@Deprecated('Use BookingTable.t instead.')
BookingTable tBooking = BookingTable();

class BookingInclude extends _i1.IncludeObject {
  BookingInclude._({
    _i2.UserInclude? user,
    _i2.LocationInclude? location,
  }) {
    _user = user;
    _location = location;
  }

  _i2.UserInclude? _user;

  _i2.LocationInclude? _location;

  @override
  Map<String, _i1.Include?> get includes => {
        'user': _user,
        'location': _location,
      };

  @override
  _i1.Table get table => Booking.t;
}

class BookingIncludeList extends _i1.IncludeList {
  BookingIncludeList._({
    _i1.WhereExpressionBuilder<BookingTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Booking.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Booking.t;
}

class BookingRepository {
  const BookingRepository._();

  final attachRow = const BookingAttachRowRepository._();

  Future<List<Booking>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookingTable>? orderByList,
    _i1.Transaction? transaction,
    BookingInclude? include,
  }) async {
    return session.dbNext.find<Booking>(
      where: where?.call(Booking.t),
      orderBy: orderBy?.call(Booking.t),
      orderByList: orderByList?.call(Booking.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Booking?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookingTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookingTable>? orderByList,
    _i1.Transaction? transaction,
    BookingInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Booking>(
      where: where?.call(Booking.t),
      orderBy: orderBy?.call(Booking.t),
      orderByList: orderByList?.call(Booking.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Booking?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookingInclude? include,
  }) async {
    return session.dbNext.findById<Booking>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Booking>> insert(
    _i1.Session session,
    List<Booking> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Booking>(
      rows,
      transaction: transaction,
    );
  }

  Future<Booking> insertRow(
    _i1.Session session,
    Booking row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Booking>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Booking>> update(
    _i1.Session session,
    List<Booking> rows, {
    _i1.ColumnSelections<BookingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Booking>(
      rows,
      columns: columns?.call(Booking.t),
      transaction: transaction,
    );
  }

  Future<Booking> updateRow(
    _i1.Session session,
    Booking row, {
    _i1.ColumnSelections<BookingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Booking>(
      row,
      columns: columns?.call(Booking.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Booking> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Booking>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Booking row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Booking>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Booking>(
      where: where(Booking.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookingTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Booking>(
      where: where?.call(Booking.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookingAttachRowRepository {
  const BookingAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    Booking booking,
    _i2.User user,
  ) async {
    if (booking.id == null) {
      throw ArgumentError.notNull('booking.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $booking = booking.copyWith(userId: user.id);
    await session.dbNext.updateRow<Booking>(
      $booking,
      columns: [Booking.t.userId],
    );
  }

  Future<void> location(
    _i1.Session session,
    Booking booking,
    _i2.Location location,
  ) async {
    if (booking.id == null) {
      throw ArgumentError.notNull('booking.id');
    }
    if (location.id == null) {
      throw ArgumentError.notNull('location.id');
    }

    var $booking = booking.copyWith(locationId: location.id);
    await session.dbNext.updateRow<Booking>(
      $booking,
      columns: [Booking.t.locationId],
    );
  }
}
