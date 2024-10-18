import 'package:nomadlodge_backend_server/src/generated/maintenace.dart';
import 'package:nomadlodge_backend_server/src/generated/maintenance_type.dart';
import 'package:nomadlodge_backend_server/src/generated/booking.dart';
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
  Future<List<Maintenance>> getByLocationId(
      Session session, int locationId) async {
    final maintanences = super.getByLocationId(session, locationId);
    maintanences.then((value) => {
          value.where((element) => element.maintenancetype == MaintenanceType.cleaning)
        }.toList());
    return maintanences;
  }

  @override
  Future<List<Maintenance>> getByUserId(Session session, int userId) async {
    final maintanences = super.getByUserId(session, userId);
    maintanences.then((value) => {
          value.where((element) => element.maintenancetype == MaintenanceType.cleaning)
        }.toList());
    return maintanences;
  }

  @override
  Future<List<Maintenance>> getByMonthYear(
      Session session, int year, int month) async {
    final maintanences = super.getByMonthYear(session, year, month);
    maintanences.then((value) => {
          value.where((element) => element.maintenancetype == MaintenanceType.cleaning)
        }.toList());
    return maintanences;
  }

  Future<List<Maintenance>> createCleaningMaintenancesforEachBookingInLocationId(
      Session session, int locationId) async {
    
    final maintanences = <Maintenance>[];
    final bookings = await Booking.db.find(session, where: (t) => t.locationId.equals(locationId));
    for (var booking in bookings) {
      final maintanences = await Maintenance.db.find(session, where: (t) => t.locationId.equals(locationId));
      final filteredM = maintanences.where((element) => element.maintenancetype == MaintenanceType.cleaning && element.bookingId == booking.id).toList();
      if (filteredM.isEmpty) {
          final newMaintenance = Maintenance(
            locationId: locationId,
            bookingId: booking.id,
            maintenancetype: MaintenanceType.cleaning,
            start: booking.end,
            userId: booking.userId,
            description: "Cleaning for booking ${booking.id}",
          );
          await Maintenance.db.insertRow(session, newMaintenance);
          maintanences.add(newMaintenance);
      } else {
        maintanences.addAll(filteredM);
      }
    }
   
        
    return maintanences;
  }
}
