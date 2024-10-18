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

abstract class Booking implements _i1.TableRow, _i1.ProtocolSerialization {
  Booking._({
    this.id,
    required this.externalId,
    required this.platform,
    required this.start,
    required this.end,
    required this.userId,
    this.user,
    required this.locationId,
    this.location,
  });

  factory Booking({
    int? id,
    required String externalId,
    required String platform,
    required DateTime start,
    required DateTime end,
    required int userId,
    _i2.User? user,
    required int locationId,
    _i2.Location? location,
  }) = _BookingImpl;

  factory Booking.fromJson(Map<String, dynamic> jsonSerialization) {
    return Booking(
      id: jsonSerialization['id'] as int?,
      externalId: jsonSerialization['externalId'] as String,
      platform: jsonSerialization['platform'] as String,
      start: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['start']),
      end: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['end']),
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      locationId: jsonSerialization['locationId'] as int,
      location: jsonSerialization['location'] == null
          ? null
          : _i2.Location.fromJson(
              (jsonSerialization['location'] as Map<String, dynamic>)),
    );
  }

  static final t = BookingTable();

  static const db = BookingRepository._();

  @override
  int? id;

  String externalId;

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
    String? externalId,
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
      'externalId': externalId,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'externalId': externalId,
      'platform': platform,
      'start': start.toJson(),
      'end': end.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'locationId': locationId,
      if (location != null) 'location': location?.toJsonForProtocol(),
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BookingImpl extends Booking {
  _BookingImpl({
    int? id,
    required String externalId,
    required String platform,
    required DateTime start,
    required DateTime end,
    required int userId,
    _i2.User? user,
    required int locationId,
    _i2.Location? location,
  }) : super._(
          id: id,
          externalId: externalId,
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
    String? externalId,
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
      externalId: externalId ?? this.externalId,
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
    externalId = _i1.ColumnString(
      'externalId',
      this,
    );
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

  late final _i1.ColumnString externalId;

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
        externalId,
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
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<BookingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookingTable>? orderByList,
    _i1.Transaction? transaction,
    BookingInclude? include,
  }) async {
    return databaseAccessor.db.find<Booking>(
      where: where?.call(Booking.t),
      orderBy: orderBy?.call(Booking.t),
      orderByList: orderByList?.call(Booking.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Booking?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<BookingTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookingTable>? orderByList,
    _i1.Transaction? transaction,
    BookingInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<Booking>(
      where: where?.call(Booking.t),
      orderBy: orderBy?.call(Booking.t),
      orderByList: orderByList?.call(Booking.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Booking?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    BookingInclude? include,
  }) async {
    return databaseAccessor.db.findById<Booking>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<List<Booking>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Booking> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Booking>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Booking> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Booking row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Booking>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Booking>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Booking> rows, {
    _i1.ColumnSelections<BookingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Booking>(
      rows,
      columns: columns?.call(Booking.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Booking> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Booking row, {
    _i1.ColumnSelections<BookingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Booking>(
      row,
      columns: columns?.call(Booking.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Booking>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Booking> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Booking>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Booking> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Booking row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Booking>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Booking>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<BookingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Booking>(
      where: where(Booking.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<BookingTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Booking>(
      where: where?.call(Booking.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class BookingAttachRowRepository {
  const BookingAttachRowRepository._();

  Future<void> user(
    _i1.DatabaseAccessor databaseAccessor,
    Booking booking,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (booking.id == null) {
      throw ArgumentError.notNull('booking.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $booking = booking.copyWith(userId: user.id);
    await databaseAccessor.db.updateRow<Booking>(
      $booking,
      columns: [Booking.t.userId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> location(
    _i1.DatabaseAccessor databaseAccessor,
    Booking booking,
    _i2.Location location, {
    _i1.Transaction? transaction,
  }) async {
    if (booking.id == null) {
      throw ArgumentError.notNull('booking.id');
    }
    if (location.id == null) {
      throw ArgumentError.notNull('location.id');
    }

    var $booking = booking.copyWith(locationId: location.id);
    await databaseAccessor.db.updateRow<Booking>(
      $booking,
      columns: [Booking.t.locationId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
