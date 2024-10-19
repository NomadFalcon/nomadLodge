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
import '../endpoints/booking_endpoint.dart' as _i2;
import '../endpoints/cleaning_endpoint.dart' as _i3;
import '../endpoints/example_endpoint.dart' as _i4;
import '../endpoints/integration_enpoint.dart' as _i5;
import '../endpoints/location_endpoint.dart' as _i6;
import '../endpoints/maintenance_endpoint.dart' as _i7;
import '../endpoints/tasks_endpoint.dart' as _i8;
import '../endpoints/user_endpoint.dart' as _i9;
import 'package:nomadlodge_backend_server/src/generated/user.dart' as _i10;
import 'package:nomadlodge_backend_server/src/generated/integration.dart'
    as _i11;
import 'package:nomadlodge_backend_server/src/generated/user_device.dart'
    as _i12;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i13;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'booking': _i2.BookingEndpoint()
        ..initialize(
          server,
          'booking',
          null,
        ),
      'cleaning': _i3.CleaningEndpoint()
        ..initialize(
          server,
          'cleaning',
          null,
        ),
      'example': _i4.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'integration': _i5.IntegrationEndpoint()
        ..initialize(
          server,
          'integration',
          null,
        ),
      'location': _i6.LocationEndpoint()
        ..initialize(
          server,
          'location',
          null,
        ),
      'maintenance': _i7.MaintenanceEndpoint()
        ..initialize(
          server,
          'maintenance',
          null,
        ),
      'tasks': _i8.TasksEndpoint()
        ..initialize(
          server,
          'tasks',
          null,
        ),
      'user': _i9.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
    };
    connectors['booking'] = _i1.EndpointConnector(
      name: 'booking',
      endpoint: endpoints['booking']!,
      methodConnectors: {
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i10.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['booking'] as _i2.BookingEndpoint).getAll(
            session,
            params['user'],
          ),
        ),
        'getAllFuture': _i1.MethodConnector(
          name: 'getAllFuture',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['booking'] as _i2.BookingEndpoint)
                  .getAllFuture(session),
        ),
        'getAllPast': _i1.MethodConnector(
          name: 'getAllPast',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['booking'] as _i2.BookingEndpoint).getAllPast(session),
        ),
        'getByLocationId': _i1.MethodConnector(
          name: 'getByLocationId',
          params: {
            'locationId': _i1.ParameterDescription(
              name: 'locationId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['booking'] as _i2.BookingEndpoint).getByLocationId(
            session,
            params['locationId'],
          ),
        ),
        'getByMonthYear': _i1.MethodConnector(
          name: 'getByMonthYear',
          params: {
            'year': _i1.ParameterDescription(
              name: 'year',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'month': _i1.ParameterDescription(
              name: 'month',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['booking'] as _i2.BookingEndpoint).getByMonthYear(
            session,
            params['year'],
            params['month'],
          ),
        ),
      },
    );
    connectors['cleaning'] = _i1.EndpointConnector(
      name: 'cleaning',
      endpoint: endpoints['cleaning']!,
      methodConnectors: {
        'getAllByUsersLocations': _i1.MethodConnector(
          name: 'getAllByUsersLocations',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cleaning'] as _i3.CleaningEndpoint)
                  .getAllByUsersLocations(
            session,
            params['userId'],
          ),
        ),
        'getByLocationId': _i1.MethodConnector(
          name: 'getByLocationId',
          params: {
            'locationId': _i1.ParameterDescription(
              name: 'locationId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cleaning'] as _i3.CleaningEndpoint).getByLocationId(
            session,
            params['locationId'],
          ),
        ),
        'getByUserId': _i1.MethodConnector(
          name: 'getByUserId',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cleaning'] as _i3.CleaningEndpoint).getByUserId(
            session,
            params['userId'],
          ),
        ),
        'createCleaningMaintenancesforEachBookingInUsersLocations':
            _i1.MethodConnector(
          name: 'createCleaningMaintenancesforEachBookingInUsersLocations',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cleaning'] as _i3.CleaningEndpoint)
                  .createCleaningMaintenancesforEachBookingInUsersLocations(
            session,
            params['userId'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i4.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['integration'] = _i1.EndpointConnector(
      name: 'integration',
      endpoint: endpoints['integration']!,
      methodConnectors: {
        'getIntegrations': _i1.MethodConnector(
          name: 'getIntegrations',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i10.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['integration'] as _i5.IntegrationEndpoint)
                  .getIntegrations(
            session,
            params['user'],
          ),
        ),
        'createIntegration': _i1.MethodConnector(
          name: 'createIntegration',
          params: {
            'integration': _i1.ParameterDescription(
              name: 'integration',
              type: _i1.getType<_i11.Integration>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['integration'] as _i5.IntegrationEndpoint)
                  .createIntegration(
            session,
            params['integration'],
          ),
        ),
        'reloadIntegrations': _i1.MethodConnector(
          name: 'reloadIntegrations',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i10.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['integration'] as _i5.IntegrationEndpoint)
                  .reloadIntegrations(
            session,
            params['user'],
          ),
        ),
      },
    );
    connectors['location'] = _i1.EndpointConnector(
      name: 'location',
      endpoint: endpoints['location']!,
      methodConnectors: {
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i10.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['location'] as _i6.LocationEndpoint).getAll(
            session,
            params['user'],
          ),
        ),
        'getById': _i1.MethodConnector(
          name: 'getById',
          params: {
            'locationId': _i1.ParameterDescription(
              name: 'locationId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['location'] as _i6.LocationEndpoint).getById(
            session,
            params['locationId'],
          ),
        ),
        'getTeams': _i1.MethodConnector(
          name: 'getTeams',
          params: {
            'locationId': _i1.ParameterDescription(
              name: 'locationId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['location'] as _i6.LocationEndpoint).getTeams(
            session,
            params['locationId'],
          ),
        ),
        'getBookings': _i1.MethodConnector(
          name: 'getBookings',
          params: {
            'locationId': _i1.ParameterDescription(
              name: 'locationId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['location'] as _i6.LocationEndpoint).getBookings(
            session,
            params['locationId'],
          ),
        ),
      },
    );
    connectors['maintenance'] = _i1.EndpointConnector(
      name: 'maintenance',
      endpoint: endpoints['maintenance']!,
      methodConnectors: {
        'getByLocationId': _i1.MethodConnector(
          name: 'getByLocationId',
          params: {
            'locationId': _i1.ParameterDescription(
              name: 'locationId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['maintenance'] as _i7.MaintenanceEndpoint)
                  .getByLocationId(
            session,
            params['locationId'],
          ),
        ),
        'getByUserId': _i1.MethodConnector(
          name: 'getByUserId',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['maintenance'] as _i7.MaintenanceEndpoint).getByUserId(
            session,
            params['userId'],
          ),
        ),
        'getByMonthYear': _i1.MethodConnector(
          name: 'getByMonthYear',
          params: {
            'year': _i1.ParameterDescription(
              name: 'year',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'month': _i1.ParameterDescription(
              name: 'month',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['maintenance'] as _i7.MaintenanceEndpoint)
                  .getByMonthYear(
            session,
            params['year'],
            params['month'],
          ),
        ),
      },
    );
    connectors['tasks'] = _i1.EndpointConnector(
      name: 'tasks',
      endpoint: endpoints['tasks']!,
      methodConnectors: {
        'getTasksByMaintenanceId': _i1.MethodConnector(
          name: 'getTasksByMaintenanceId',
          params: {
            'maintenanceId': _i1.ParameterDescription(
              name: 'maintenanceId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['tasks'] as _i8.TasksEndpoint).getTasksByMaintenanceId(
            session,
            params['maintenanceId'],
          ),
        ),
        'setTaskAsComplete': _i1.MethodConnector(
          name: 'setTaskAsComplete',
          params: {
            'taskId': _i1.ParameterDescription(
              name: 'taskId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['tasks'] as _i8.TasksEndpoint).setTaskAsComplete(
            session,
            params['taskId'],
          ),
        ),
      },
    );
    connectors['user'] = _i1.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'getUserByAuthIdentifier': _i1.MethodConnector(
          name: 'getUserByAuthIdentifier',
          params: {
            'authIdentifier': _i1.ParameterDescription(
              name: 'authIdentifier',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i9.UserEndpoint).getUserByAuthIdentifier(
            session,
            params['authIdentifier'],
          ),
        ),
        'createUser': _i1.MethodConnector(
          name: 'createUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i10.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i9.UserEndpoint).createUser(
            session,
            params['user'],
          ),
        ),
        'associateUserFromInvitation': _i1.MethodConnector(
          name: 'associateUserFromInvitation',
          params: {
            'invitationCode': _i1.ParameterDescription(
              name: 'invitationCode',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'authIdentifier': _i1.ParameterDescription(
              name: 'authIdentifier',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i9.UserEndpoint)
                  .associateUserFromInvitation(
            session,
            params['invitationCode'],
            params['authIdentifier'],
          ),
        ),
        'addDevice': _i1.MethodConnector(
          name: 'addDevice',
          params: {
            'userDevice': _i1.ParameterDescription(
              name: 'userDevice',
              type: _i1.getType<_i12.UserDevice>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i9.UserEndpoint).addDevice(
            session,
            params['userDevice'],
          ),
        ),
        'removeDeviceWithToken': _i1.MethodConnector(
          name: 'removeDeviceWithToken',
          params: {
            'userDeviceToken': _i1.ParameterDescription(
              name: 'userDeviceToken',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i9.UserEndpoint).removeDeviceWithToken(
            session,
            params['userDeviceToken'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i13.Endpoints()..initializeEndpoints(server);
  }
}
