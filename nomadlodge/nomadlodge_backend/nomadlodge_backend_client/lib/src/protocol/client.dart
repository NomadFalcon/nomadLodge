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
import 'dart:async' as _i2;
import 'package:nomadlodge_backend_client/src/protocol/booking.dart' as _i3;
import 'package:nomadlodge_backend_client/src/protocol/user.dart' as _i4;
import 'package:nomadlodge_backend_client/src/protocol/maintenace.dart' as _i5;
import 'package:nomadlodge_backend_client/src/protocol/integration.dart' as _i6;
import 'package:nomadlodge_backend_client/src/protocol/location.dart' as _i7;
import 'package:nomadlodge_backend_client/src/protocol/location_team.dart'
    as _i8;
import 'package:nomadlodge_backend_client/src/protocol/task.dart' as _i9;
import 'package:nomadlodge_backend_client/src/protocol/user_device.dart'
    as _i10;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i11;
import 'protocol.dart' as _i12;

/// {@category Endpoint}
class EndpointBooking extends _i1.EndpointRef {
  EndpointBooking(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'booking';

  _i2.Future<List<_i3.Booking>> getAll(_i4.User user) =>
      caller.callServerEndpoint<List<_i3.Booking>>(
        'booking',
        'getAll',
        {'user': user},
      );

  _i2.Future<List<_i3.Booking>> getAllFuture() =>
      caller.callServerEndpoint<List<_i3.Booking>>(
        'booking',
        'getAllFuture',
        {},
      );

  _i2.Future<List<_i3.Booking>> getAllPast() =>
      caller.callServerEndpoint<List<_i3.Booking>>(
        'booking',
        'getAllPast',
        {},
      );

  _i2.Future<List<_i3.Booking>> getByLocationId(int locationId) =>
      caller.callServerEndpoint<List<_i3.Booking>>(
        'booking',
        'getByLocationId',
        {'locationId': locationId},
      );

  _i2.Future<List<_i3.Booking>> getByMonthYear(
    int year,
    int month,
  ) =>
      caller.callServerEndpoint<List<_i3.Booking>>(
        'booking',
        'getByMonthYear',
        {
          'year': year,
          'month': month,
        },
      );
}

/// {@category Endpoint}
class EndpointCleaning extends _i1.EndpointRef {
  EndpointCleaning(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'cleaning';

  _i2.Future<List<_i5.Maintenance>> getAllByUsersLocations(int userId) =>
      caller.callServerEndpoint<List<_i5.Maintenance>>(
        'cleaning',
        'getAllByUsersLocations',
        {'userId': userId},
      );

  _i2.Future<List<_i5.Maintenance>> getByLocationId(int locationId) =>
      caller.callServerEndpoint<List<_i5.Maintenance>>(
        'cleaning',
        'getByLocationId',
        {'locationId': locationId},
      );

  _i2.Future<List<_i5.Maintenance>> getByUserId(int userId) =>
      caller.callServerEndpoint<List<_i5.Maintenance>>(
        'cleaning',
        'getByUserId',
        {'userId': userId},
      );

  _i2.Future<List<_i5.Maintenance>>
      createCleaningMaintenancesforEachBookingInUsersLocations(int userId) =>
          caller.callServerEndpoint<List<_i5.Maintenance>>(
            'cleaning',
            'createCleaningMaintenancesforEachBookingInUsersLocations',
            {'userId': userId},
          );
}

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
class EndpointIntegration extends _i1.EndpointRef {
  EndpointIntegration(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'integration';

  _i2.Future<List<_i6.Integration>> getIntegrations(_i4.User user) =>
      caller.callServerEndpoint<List<_i6.Integration>>(
        'integration',
        'getIntegrations',
        {'user': user},
      );

  _i2.Future<_i6.Integration> createIntegration(_i6.Integration integration) =>
      caller.callServerEndpoint<_i6.Integration>(
        'integration',
        'createIntegration',
        {'integration': integration},
      );

  _i2.Future<bool> reloadIntegrations(_i4.User user) =>
      caller.callServerEndpoint<bool>(
        'integration',
        'reloadIntegrations',
        {'user': user},
      );
}

/// {@category Endpoint}
class EndpointLocation extends _i1.EndpointRef {
  EndpointLocation(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'location';

  _i2.Future<List<_i7.Location>> getAll(_i4.User user) =>
      caller.callServerEndpoint<List<_i7.Location>>(
        'location',
        'getAll',
        {'user': user},
      );

  _i2.Future<_i7.Location?> getById(int locationId) =>
      caller.callServerEndpoint<_i7.Location?>(
        'location',
        'getById',
        {'locationId': locationId},
      );

  _i2.Future<List<_i8.LocationTeam>> getTeams(int locationId) =>
      caller.callServerEndpoint<List<_i8.LocationTeam>>(
        'location',
        'getTeams',
        {'locationId': locationId},
      );

  _i2.Future<List<_i3.Booking>> getBookings(int locationId) =>
      caller.callServerEndpoint<List<_i3.Booking>>(
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

  _i2.Future<List<_i5.Maintenance>> getByLocationId(int locationId) =>
      caller.callServerEndpoint<List<_i5.Maintenance>>(
        'maintenance',
        'getByLocationId',
        {'locationId': locationId},
      );

  _i2.Future<List<_i5.Maintenance>> getByUserId(int userId) =>
      caller.callServerEndpoint<List<_i5.Maintenance>>(
        'maintenance',
        'getByUserId',
        {'userId': userId},
      );

  _i2.Future<List<_i5.Maintenance>> getByMonthYear(
    int year,
    int month,
  ) =>
      caller.callServerEndpoint<List<_i5.Maintenance>>(
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

  _i2.Future<List<_i9.Task>> getTasksByMaintenanceId(int maintenanceId) =>
      caller.callServerEndpoint<List<_i9.Task>>(
        'tasks',
        'getTasksByMaintenanceId',
        {'maintenanceId': maintenanceId},
      );

  _i2.Future<_i9.Task?> setTaskAsComplete(int taskId) =>
      caller.callServerEndpoint<_i9.Task?>(
        'tasks',
        'setTaskAsComplete',
        {'taskId': taskId},
      );
}

/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _i2.Future<_i4.User?> getUserByAuthIdentifier(String authIdentifier) =>
      caller.callServerEndpoint<_i4.User?>(
        'user',
        'getUserByAuthIdentifier',
        {'authIdentifier': authIdentifier},
      );

  _i2.Future<_i4.User> createUser(_i4.User user) =>
      caller.callServerEndpoint<_i4.User>(
        'user',
        'createUser',
        {'user': user},
      );

  _i2.Future<_i10.UserDevice> addDevice(_i10.UserDevice userDevice) =>
      caller.callServerEndpoint<_i10.UserDevice>(
        'user',
        'addDevice',
        {'userDevice': userDevice},
      );

  _i2.Future<void> removeDeviceWithToken(String userDeviceToken) =>
      caller.callServerEndpoint<void>(
        'user',
        'removeDeviceWithToken',
        {'userDeviceToken': userDeviceToken},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i11.Caller(client);
  }

  late final _i11.Caller auth;
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i12.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    booking = EndpointBooking(this);
    cleaning = EndpointCleaning(this);
    example = EndpointExample(this);
    integration = EndpointIntegration(this);
    location = EndpointLocation(this);
    maintenance = EndpointMaintenance(this);
    tasks = EndpointTasks(this);
    user = EndpointUser(this);
    modules = _Modules(this);
  }

  late final EndpointBooking booking;

  late final EndpointCleaning cleaning;

  late final EndpointExample example;

  late final EndpointIntegration integration;

  late final EndpointLocation location;

  late final EndpointMaintenance maintenance;

  late final EndpointTasks tasks;

  late final EndpointUser user;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'booking': booking,
        'cleaning': cleaning,
        'example': example,
        'integration': integration,
        'location': location,
        'maintenance': maintenance,
        'tasks': tasks,
        'user': user,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
