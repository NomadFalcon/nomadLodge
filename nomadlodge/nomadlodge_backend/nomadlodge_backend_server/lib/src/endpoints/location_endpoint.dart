import 'package:nomadlodge_backend_server/src/generated/protocol.dart';

import 'package:serverpod/serverpod.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class LocationEndpoint extends Endpoint {
  Future<List<Location>> getAll(Session session, User user) async {
    final locations = await Location.db.find(session, where: (t) => t.userId.equals(user.id), include: Location.include(user: User.include(), geoAddress: GeoAddress.include(), team: LocationTeam.include()));
    return locations;
  }

  Future<Location?> getById(Session session, int locationId) async {
    return null;
  }

  Future<List<LocationTeam>> getTeams(Session session, int locationId) async {
    final teams = <LocationTeam>[];
    return teams;
  }

  Future<List<Booking>> getBookings(Session session, int locationId) async {
    final bookings = await Booking.db.find(session, where: (t) => t.locationId.equals(locationId));
    return bookings;
  }
}
