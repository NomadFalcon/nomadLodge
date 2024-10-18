import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nomadlodge_backend_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class SmoobuIntegration {
  static const String _baseUrl = 'https://login.smoobu.com/api/';
  static const String _apiKey = 'FSKUqQbHEP4MQAILQkoDwk0zu0imYnuny3ryHTpxrT';


  static Future<List<Location>> getApartments(Session session, int userId) async {
    final locations = <Location>[];
    final response = await http.get(
      Uri.parse('$_baseUrl/apartments'),
      headers: {
        'Authorization': 'Bearer $_apiKey',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['apartments'] as List;
      print("smoobu data: $data");
      for (var apartment in data) {
        int apartmentId = apartment['id'];
        var location = await Location.db.findFirstRow(session,
              where: (t) => t.externalId.equals('$apartmentId'),
        );
        if(location != null) {
          locations.add(location);
        } else {
          final apartmentResponse = await http.get(
            Uri.parse('$_baseUrl/apartments/${apartment['id']}'),
              headers: {
                'Authorization': 'Bearer $_apiKey',
                'Content-Type': 'application/json',
          },);
          if (apartmentResponse.statusCode == 200) {
            final apartmentData = jsonDecode(apartmentResponse.body);
            var geoAddressRow = GeoAddress(latitude: apartmentData['location']['latitude'], longitude: apartmentData['location']['longitude'], shortAddress: apartmentData['location']['street'], longAddress: apartmentData['location']['street']);
            final geoAddress = await GeoAddress.db.insertRow(session, geoAddressRow);
            final location = Location(externalId: "$apartment['id']", name: apartment['name'], longDescription: "", shortDescription: '', rooms: apartmentData['rooms']['bedrooms'], userId: userId, geoAddressId: geoAddress.id!);
            final newLocation = await Location.db.insertRow(session, location);
            locations.add(newLocation);
          }
        }
      }
    } 
    return locations;
  }

  static Future<List<Booking>> getReservations(Session session,) async {
    final bookings = <Booking>[];
    final response = await http.get(
      Uri.parse('$_baseUrl/reservations'),
      headers: {
        'Authorization': 'Bearer $_apiKey',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final bookingData = jsonDecode(response.body)['bookings'] as List;
      print("smoobu data: $bookingData");
      for (var booking in bookingData) {
        int apartmentId = booking['apartment']['id'] as int;
        var location = await Location.db.findFirstRow(session,
              where: (t) => t.externalId.equals('$apartmentId'),
        );
        
        if (location != null) {
          int bookingId = booking['id'] as int;
          String platform = booking['channel']['name'] as String;
          String startDate = booking['from'] as String;
          String endDate = booking['to'] as String;
          DateTime start = DateTime.parse(startDate);
          DateTime end = DateTime.parse(endDate);

          int guestId = booking['guestId'] as int;
          var guestUser = await User.db.findFirstRow(session,
              where: (t) => t.externalId.equals('$guestId'),
          );
          int userId;
          if (guestUser == null) {
            final guestUserRow = User(name: booking['guest-name'], email: booking['email'], externalId: "$guestId", userType: UserType.client);
            User newGuestUser = await User.db.insertRow(session, guestUserRow);
            userId = newGuestUser.id!;
          } else {
            userId = guestUser.id!;
          }
        final bookingRow = Booking(externalId: "$bookingId", platform: platform, start: start, end: end, locationId: location.id!, userId: userId);
        Booking newBooking = await Booking.db.insertRow(session, bookingRow);
        bookings.add(newBooking);
      }  
    } 
    }
    return bookings;
  }
}