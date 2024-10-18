import 'package:nomadlodge_backend_server/src/generated/maintenace.dart';
import 'package:nomadlodge_backend_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class BookingEndpoint extends Endpoint {
  Future<List<Booking>> getAll(Session session, User user) async {
    final bookings = <Booking>[];
    final locations = await Location.db.find(session, where: (t) => t.userId.equals(user.id));
    for (var location in locations) {
      final locationBookings = await Booking.db.find(session, where: (t) => t.locationId.equals(location.id));
      bookings.addAll(locationBookings);
    }
    return bookings;
  }
  Future<List<Booking>> getAllFuture(Session session) async {
    final bookings = <Booking>[];
    return bookings;
  }

  Future<List<Booking>> getAllPast(Session session) async {
    final bookings = <Booking>[];
    return bookings;
  }

  Future<List<Booking>> getByLocationId(
      Session session, int locationId) async {
    final bookings = <Booking>[];
    final locationBookings = await Booking.db.find(session, where: (t) => t.locationId.equals(locationId));
    bookings.addAll(locationBookings);
    return bookings;
  }


  Future<List<Booking>> getByMonthYear(
      Session session, int year, int month) async {
    final bookings = <Booking>[];
    return bookings;
  }
}
