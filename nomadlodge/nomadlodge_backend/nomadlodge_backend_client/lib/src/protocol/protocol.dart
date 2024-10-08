/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'booking.dart' as _i2;
import 'fee.dart' as _i3;
import 'geo_address.dart' as _i4;
import 'location.dart' as _i5;
import 'location_team.dart' as _i6;
import 'maintenace.dart' as _i7;
import 'maintenance_type.dart' as _i8;
import 'media.dart' as _i9;
import 'media_type.dart' as _i10;
import 'task.dart' as _i11;
import 'user.dart' as _i12;
import 'user_device.dart' as _i13;
import 'user_type.dart' as _i14;
import 'protocol.dart' as _i15;
import 'package:nomadlodge_backend_client/src/protocol/location.dart' as _i16;
import 'package:nomadlodge_backend_client/src/protocol/location_team.dart'
    as _i17;
import 'package:nomadlodge_backend_client/src/protocol/booking.dart' as _i18;
import 'package:nomadlodge_backend_client/src/protocol/maintenace.dart' as _i19;
import 'package:nomadlodge_backend_client/src/protocol/task.dart' as _i20;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i21;
export 'booking.dart';
export 'fee.dart';
export 'geo_address.dart';
export 'location.dart';
export 'location_team.dart';
export 'maintenace.dart';
export 'maintenance_type.dart';
export 'media.dart';
export 'media_type.dart';
export 'task.dart';
export 'user.dart';
export 'user_device.dart';
export 'user_type.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Booking) {
      return _i2.Booking.fromJson(data) as T;
    }
    if (t == _i3.Fee) {
      return _i3.Fee.fromJson(data) as T;
    }
    if (t == _i4.GeoAddress) {
      return _i4.GeoAddress.fromJson(data) as T;
    }
    if (t == _i5.Location) {
      return _i5.Location.fromJson(data) as T;
    }
    if (t == _i6.LocationTeam) {
      return _i6.LocationTeam.fromJson(data) as T;
    }
    if (t == _i7.Maintenance) {
      return _i7.Maintenance.fromJson(data) as T;
    }
    if (t == _i8.Maintenancetype) {
      return _i8.Maintenancetype.fromJson(data) as T;
    }
    if (t == _i9.Media) {
      return _i9.Media.fromJson(data) as T;
    }
    if (t == _i10.MediaType) {
      return _i10.MediaType.fromJson(data) as T;
    }
    if (t == _i11.Task) {
      return _i11.Task.fromJson(data) as T;
    }
    if (t == _i12.User) {
      return _i12.User.fromJson(data) as T;
    }
    if (t == _i13.UserDevice) {
      return _i13.UserDevice.fromJson(data) as T;
    }
    if (t == _i14.UserType) {
      return _i14.UserType.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Booking?>()) {
      return (data != null ? _i2.Booking.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Fee?>()) {
      return (data != null ? _i3.Fee.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.GeoAddress?>()) {
      return (data != null ? _i4.GeoAddress.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Location?>()) {
      return (data != null ? _i5.Location.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.LocationTeam?>()) {
      return (data != null ? _i6.LocationTeam.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Maintenance?>()) {
      return (data != null ? _i7.Maintenance.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Maintenancetype?>()) {
      return (data != null ? _i8.Maintenancetype.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Media?>()) {
      return (data != null ? _i9.Media.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.MediaType?>()) {
      return (data != null ? _i10.MediaType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Task?>()) {
      return (data != null ? _i11.Task.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.User?>()) {
      return (data != null ? _i12.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.UserDevice?>()) {
      return (data != null ? _i13.UserDevice.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.UserType?>()) {
      return (data != null ? _i14.UserType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i15.Media>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Media>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i15.User>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.User>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i15.Task>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Task>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i15.Media>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Media>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i15.UserDevice>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.UserDevice>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i16.Location>) {
      return (data as List).map((e) => deserialize<_i16.Location>(e)).toList()
          as dynamic;
    }
    if (t == List<_i17.LocationTeam>) {
      return (data as List)
          .map((e) => deserialize<_i17.LocationTeam>(e))
          .toList() as dynamic;
    }
    if (t == List<_i18.Booking>) {
      return (data as List).map((e) => deserialize<_i18.Booking>(e)).toList()
          as dynamic;
    }
    if (t == List<_i19.Maintenance>) {
      return (data as List)
          .map((e) => deserialize<_i19.Maintenance>(e))
          .toList() as dynamic;
    }
    if (t == List<_i20.Task>) {
      return (data as List).map((e) => deserialize<_i20.Task>(e)).toList()
          as dynamic;
    }
    try {
      return _i21.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Booking) {
      return 'Booking';
    }
    if (data is _i3.Fee) {
      return 'Fee';
    }
    if (data is _i4.GeoAddress) {
      return 'GeoAddress';
    }
    if (data is _i5.Location) {
      return 'Location';
    }
    if (data is _i6.LocationTeam) {
      return 'LocationTeam';
    }
    if (data is _i7.Maintenance) {
      return 'Maintenance';
    }
    if (data is _i8.Maintenancetype) {
      return 'Maintenancetype';
    }
    if (data is _i9.Media) {
      return 'Media';
    }
    if (data is _i10.MediaType) {
      return 'MediaType';
    }
    if (data is _i11.Task) {
      return 'Task';
    }
    if (data is _i12.User) {
      return 'User';
    }
    if (data is _i13.UserDevice) {
      return 'UserDevice';
    }
    if (data is _i14.UserType) {
      return 'UserType';
    }
    className = _i21.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Booking') {
      return deserialize<_i2.Booking>(data['data']);
    }
    if (data['className'] == 'Fee') {
      return deserialize<_i3.Fee>(data['data']);
    }
    if (data['className'] == 'GeoAddress') {
      return deserialize<_i4.GeoAddress>(data['data']);
    }
    if (data['className'] == 'Location') {
      return deserialize<_i5.Location>(data['data']);
    }
    if (data['className'] == 'LocationTeam') {
      return deserialize<_i6.LocationTeam>(data['data']);
    }
    if (data['className'] == 'Maintenance') {
      return deserialize<_i7.Maintenance>(data['data']);
    }
    if (data['className'] == 'Maintenancetype') {
      return deserialize<_i8.Maintenancetype>(data['data']);
    }
    if (data['className'] == 'Media') {
      return deserialize<_i9.Media>(data['data']);
    }
    if (data['className'] == 'MediaType') {
      return deserialize<_i10.MediaType>(data['data']);
    }
    if (data['className'] == 'Task') {
      return deserialize<_i11.Task>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i12.User>(data['data']);
    }
    if (data['className'] == 'UserDevice') {
      return deserialize<_i13.UserDevice>(data['data']);
    }
    if (data['className'] == 'UserType') {
      return deserialize<_i14.UserType>(data['data']);
    }
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i21.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
