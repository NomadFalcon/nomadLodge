import 'package:nomadlodge_backend_server/src/generated/maintenace.dart';
import 'package:serverpod/serverpod.dart';
import 'maintenance_endpoint.dart';
// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class CleaningEndpoint extends MaintenanceEndpoint {
  @override
  Future<List<Maintenance>> getAll(Session session) async {
    final maintanences = super.getAll(session);
    maintanences.then((value) => {
          value.where((element) => element.maintenancetype?.name == "cleaning")
        }.toList());
    return maintanences;
  }

  @override
  Future<List<Maintenance>> getByLocationId(
      Session session, int locationId) async {
    final maintanences = super.getByLocationId(session, locationId);
    maintanences.then((value) => {
          value.where((element) => element.maintenancetype?.name == "cleaning")
        }.toList());
    return maintanences;
  }

  @override
  Future<List<Maintenance>> getByUserId(Session session, int userId) async {
    final maintanences = super.getByUserId(session, userId);
    maintanences.then((value) => {
          value.where((element) => element.maintenancetype?.name == "cleaning")
        }.toList());
    return maintanences;
  }

  @override
  Future<List<Maintenance>> getByMonthYear(
      Session session, int year, int month) async {
    final maintanences = super.getByMonthYear(session, year, month);
    maintanences.then((value) => {
          value.where((element) => element.maintenancetype?.name == "cleaning")
        }.toList());
    return maintanences;
  }
}
