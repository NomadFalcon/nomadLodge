/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Product implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime? start;

  DateTime? end;

  String description;

  List<_i2.Media>? medias;

  int feeId;

  _i2.Fee? fee;

  int locationId;

  _i2.Location? location;

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
