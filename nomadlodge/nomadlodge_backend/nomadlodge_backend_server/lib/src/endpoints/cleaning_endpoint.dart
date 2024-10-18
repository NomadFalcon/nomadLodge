import 'package:nomadlodge_backend_server/src/generated/maintenace.dart';
import 'package:nomadlodge_backend_server/src/generated/maintenance_type.dart';
import 'package:nomadlodge_backend_server/src/generated/booking.dart';
import 'package:nomadlodge_backend_server/src/generated/location.dart';
import 'package:serverpod/serverpod.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class CleaningEndpoint extends Endpoint {

  Future<List<Maintenance>> getAllByUsersLocations(
      Session session, int userId) async {
        print("getAllByUsersLocations");
    final maintanencesFinal = <Maintenance>[];
    final locations = await Location.db.find(session, where: (t) => t.userId.equals(userId));
    print("getAllByUsersLocations locations: $locations");
    for (var location in locations) {
      final maintanences = await Maintenance.db.find(session, where: (t) => t.locationId.equals(location.id!), include: Maintenance.include(location: Location.include()));
      print("getAllByUsersLocations maintanences: $maintanences");
      final filteredMaintanences = maintanences.where((element) => element.maintenancetype == MaintenanceType.cleaning);
      maintanencesFinal.addAll(filteredMaintanences);
    }
    
    return maintanencesFinal;
  }
  Future<List<Maintenance>> getByLocationId(
      Session session, int locationId) async {
    final maintanences = Maintenance.db.find(session, where: (t) => t.locationId.equals(locationId));
    maintanences.then((value) => {
          value.where((element) => element.maintenancetype == MaintenanceType.cleaning)
        }.toList());
    return maintanences;
  }


  Future<List<Maintenance>> getByUserId(Session session, int userId) async {

    final maintanences = Maintenance.db.find(session, where: (t) => t.userId.equals(userId));
    maintanences.then((value) => {
          value.where((element) => element.maintenancetype == MaintenanceType.cleaning)
        }.toList());
    return maintanences;
  }



  Future<List<Maintenance>> createCleaningMaintenancesforEachBookingInUsersLocations(
      Session session, int userId) async {
    
    final maintanences = <Maintenance>[];
    final locations = await Location.db.find(session, where: (t) => t.userId.equals(userId));
    for (var location in locations) {
      final bookings = await Booking.db.find(session, where: (t) => t.locationId.equals(location.id!));
    for (var booking in bookings) {
      final maintanences = await Maintenance.db.find(session, where: (t) => t.locationId.equals(location.id!));
      final filteredM = maintanences.where((element) => element.maintenancetype == MaintenanceType.cleaning && element.bookingId == booking.id).toList();
      if (filteredM.isEmpty) {
          final newMaintenance = Maintenance(
            locationId: location.id!,
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
   
    }
    
        
    return maintanences;
  }
}
