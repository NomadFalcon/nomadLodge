/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Fee extends _i1.SerializableEntity {
  Fee._({
    this.id,
    required this.name,
    required this.description,
    required this.value,
  });

  factory Fee({
    int? id,
    required String name,
    required String description,
    required double value,
  }) = _FeeImpl;

  factory Fee.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Fee(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      value:
          serializationManager.deserialize<double>(jsonSerialization['value']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String description;

  double value;

  Fee copyWith({
    int? id,
    String? name,
    String? description,
    double? value,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'value': value,
    };
  }
}

class _Undefined {}

class _FeeImpl extends Fee {
  _FeeImpl({
    int? id,
    required String name,
    required String description,
    required double value,
  }) : super._(
          id: id,
          name: name,
          description: description,
          value: value,
        );

  @override
  Fee copyWith({
    Object? id = _Undefined,
    String? name,
    String? description,
    double? value,
  }) {
    return Fee(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      value: value ?? this.value,
    );
  }
}
