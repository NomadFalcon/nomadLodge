import 'package:nomadlodge_backend_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:nomadlodge_backend_server/src/integrations/smoobu_integration.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class IntegrationEndpoint extends Endpoint {
  Future<List<Integration>> getIntegrations(
      Session session, User user) async {
    var integration = await Integration.db.find(session,  where: (t) => t.user.id.equals(user.id),);
    return integration;
  }

  Future<Integration> createIntegration(Session session, Integration integration,) async {
    var newIntegration = await Integration.db.insertRow(session, integration);
    return newIntegration;
  }

  Future<bool> reloadIntegrations(Session session, User user,) async {
     print("entereed: reloadIntegrations");
    var integrations = await Integration.db.find(session,
        where: (t) => t.userId.equals(user.id) ,
    );
    print("integrations: $integrations");
    for (var integrations in integrations) {
      if(integrations.integrationType == IntegrationType.smoobu) {
        final locations = await SmoobuIntegration.getApartments(session, user.id!, integrations.apiKey);
        print("locations: $locations");
        final bookings = await SmoobuIntegration.getReservations(session, integrations.apiKey);
        print("bookings: $bookings");
        integrations.lastReloadDate = DateTime.now();
        Integration.db.updateRow(session, integrations);
      }
    }

    return true; 
  }
}
