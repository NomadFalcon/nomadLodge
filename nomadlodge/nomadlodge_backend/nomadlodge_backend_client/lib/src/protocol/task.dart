/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Task extends _i1.SerializableEntity {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String description;

  bool isCompleted;

  List<_i2.Media>? images;

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
