import 'package:nomadlodge_backend_server/src/generated/maintenace.dart';
import 'package:serverpod/serverpod.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class MaintenanceEndpoint extends Endpoint {
  // You create methods in your endpoint which are accessible from the client by
  // creating a public method with `Session` as its first parameter.
  // `bool`, `int`, `double`, `String`, `UuidValue`, `Duration`, `DateTime`, `ByteData`,
  // and other serializable classes, exceptions and enums from your from your `protocol` directory.
  // The methods should return a typed future; the same types as for the parameters are
  // supported. The `session` object provides access to the database, logging,
  // passwords, and information about the request being made to the server.


  Future<List<Maintenance>> getByLocationId(
      Session session, int locationId) async {
    final maintanences = Maintenance.db.find(session, where: (t) => t.locationId.equals(locationId));
    return maintanences;
  }

  Future<List<Maintenance>> getByUserId(Session session, int userId) async {
    final maintanences = Maintenance.db.find(session, where: (t) => t.userId.equals(userId));
    return maintanences;
  }

  Future<List<Maintenance>> getByMonthYear(
      Session session, int year, int month) async {
    final maintanences = <Maintenance>[];
    return maintanences;
  }
}
