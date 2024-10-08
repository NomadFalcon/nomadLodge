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

abstract class Maintenancetype implements _i1.SerializableModel {
  Maintenancetype._({
    this.id,
    required this.name,
    required this.description,
    this.icon,
  });

  factory Maintenancetype({
    int? id,
    required String name,
    required String description,
    String? icon,
  }) = _MaintenancetypeImpl;

  factory Maintenancetype.fromJson(Map<String, dynamic> jsonSerialization) {
    return Maintenancetype(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String,
      icon: jsonSerialization['icon'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String description;

  String? icon;

  Maintenancetype copyWith({
    int? id,
    String? name,
    String? description,
    String? icon,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      if (icon != null) 'icon': icon,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MaintenancetypeImpl extends Maintenancetype {
  _MaintenancetypeImpl({
    int? id,
    required String name,
    required String description,
    String? icon,
  }) : super._(
          id: id,
          name: name,
          description: description,
          icon: icon,
        );

  @override
  Maintenancetype copyWith({
    Object? id = _Undefined,
    String? name,
    String? description,
    Object? icon = _Undefined,
  }) {
    return Maintenancetype(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      icon: icon is String? ? icon : this.icon,
    );
  }
}
