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

abstract class Media implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String url;

  _i2.MediaType mediaType;

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
