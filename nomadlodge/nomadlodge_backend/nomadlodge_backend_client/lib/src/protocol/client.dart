/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:nomadlodge_backend_client/src/protocol/location.dart' as _i3;
import 'package:nomadlodge_backend_client/src/protocol/location_team.dart'
    as _i4;
import 'package:nomadlodge_backend_client/src/protocol/booking.dart' as _i5;
import 'package:nomadlodge_backend_client/src/protocol/maintenace.dart' as _i6;
import 'package:nomadlodge_backend_client/src/protocol/task.dart' as _i7;
import 'package:serverpod_auth_client/module.dart' as _i8;
import 'protocol.dart' as _i9;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointLocation extends _i1.EndpointRef {
  EndpointLocation(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'location';

  _i2.Future<List<_i3.Location>> getAll() =>
      caller.callServerEndpoint<List<_i3.Location>>(
        'location',
        'getAll',
        {},
      );

  _i2.Future<_i3.Location?> getById(int locationId) =>
      caller.callServerEndpoint<_i3.Location?>(
        'location',
        'getById',
        {'locationId': locationId},
      );

  _i2.Future<List<_i4.LocationTeam>> getTeams(int locationId) =>
      caller.callServerEndpoint<List<_i4.LocationTeam>>(
        'location',
        'getTeams',
        {'locationId': locationId},
      );

  _i2.Future<List<_i5.Booking>> getBookings(int locationId) =>
      caller.callServerEndpoint<List<_i5.Booking>>(
        'location',
        'getBookings',
        {'locationId': locationId},
      );
}

/// {@category Endpoint}
class EndpointMaintenance extends _i1.EndpointRef {
  EndpointMaintenance(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'maintenance';

  _i2.Future<List<_i6.Maintenance>> getAll() =>
      caller.callServerEndpoint<List<_i6.Maintenance>>(
        'maintenance',
        'getAll',
        {},
      );

  _i2.Future<List<_i6.Maintenance>> getByLocationId(int locationId) =>
      caller.callServerEndpoint<List<_i6.Maintenance>>(
        'maintenance',
        'getByLocationId',
        {'locationId': locationId},
      );

  _i2.Future<List<_i6.Maintenance>> getByUserId(int userId) =>
      caller.callServerEndpoint<List<_i6.Maintenance>>(
        'maintenance',
        'getByUserId',
        {'userId': userId},
      );

  _i2.Future<List<_i6.Maintenance>> getByMonthYear(
    int year,
    int month,
  ) =>
      caller.callServerEndpoint<List<_i6.Maintenance>>(
        'maintenance',
        'getByMonthYear',
        {
          'year': year,
          'month': month,
        },
      );
}

/// {@category Endpoint}
class EndpointTasks extends _i1.EndpointRef {
  EndpointTasks(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'tasks';

  _i2.Future<List<_i7.Task>> getTasksByMaintenanceId(int maintenanceId) =>
      caller.callServerEndpoint<List<_i7.Task>>(
        'tasks',
        'getTasksByMaintenanceId',
        {'maintenanceId': maintenanceId},
      );

  _i2.Future<_i7.Task?> setTaskAsComplete(int taskId) =>
      caller.callServerEndpoint<_i7.Task?>(
        'tasks',
        'setTaskAsComplete',
        {'taskId': taskId},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i8.Caller(client);
  }

  late final _i8.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i9.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    example = EndpointExample(this);
    location = EndpointLocation(this);
    maintenance = EndpointMaintenance(this);
    tasks = EndpointTasks(this);
    modules = _Modules(this);
  }

  late final EndpointExample example;

  late final EndpointLocation location;

  late final EndpointMaintenance maintenance;

  late final EndpointTasks tasks;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'location': location,
        'maintenance': maintenance,
        'tasks': tasks,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
