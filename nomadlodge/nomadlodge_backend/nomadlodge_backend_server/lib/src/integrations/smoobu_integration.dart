import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nomadlodge_backend_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'dart:math';

class SmoobuIntegration {
  static const String _baseUrl = 'https://login.smoobu.com/api';

  static String getRandString(int len) {
    var random = Random.secure();
    var values = List<int>.generate(len, (i) =>  random.nextInt(255));
    return base64UrlEncode(values);
  }

  static Future<List<Location>> getApartments(Session session, int userId, String apiKey) async {
    print("entered getApartments apiKey: $apiKey");
    final locations = <Location>[];
    final response = await http.get(
      Uri.parse('$_baseUrl/apartments'),
      headers: {
        'Api-Key': apiKey,
        'Content-Type': 'application/json',
      },
    );
    print("getApartments response: ${response.statusCode}");
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['apartments'] as List;
      print("smoobu data: $data");
      for (var apartment in data) {
        int apartmentId = apartment['id'];
        var location = await Location.db.findFirstRow(session,
              where: (t) => t.externalId.equals('$apartmentId'),
        );
        print("getApartments location: $location");
        if(location != null) {
          locations.add(location);
        } else {
          final apartmentResponse = await http.get(
            Uri.parse('$_baseUrl/apartments/${apartment['id']}'),
              headers: {
                'Api-Key': apiKey,
                'Content-Type': 'application/json',
          },);
           print("getApartments apartmentResponse: ${apartmentResponse.statusCode}");
          if (apartmentResponse.statusCode == 200) {
            final apartmentData = jsonDecode(apartmentResponse.body);
            print("getApartments apartmentData: $apartmentData");
            final lng = apartmentData['location']['longitude'] ?? 0.0;
            final lat = apartmentData['location']['latitude'] ?? 0.0;
            print("getApartments lng lat: $lng $lat");
            final streetName = apartmentData['location']['street'] ?? '';
            final city = apartmentData['location']['city'] ?? '';
            var geoAddressRow = GeoAddress(latitude: lat, longitude: lng, shortAddress: city, longAddress: streetName);
            final geoAddress = await GeoAddress.db.insertRow(session, geoAddressRow);
            final location = Location(externalId: "${apartment['id']}", name: apartment['name'], longDescription: "", shortDescription: '', rooms: apartmentData['rooms']['bedrooms'], userId: userId, geoAddressId: geoAddress.id!);
            final newLocation = await Location.db.insertRow(session, location);
            print("getApartments newLocation: $newLocation");
            locations.add(newLocation);
          }
        }
      }
    } 
    return locations;
  }

  static Future<List<Booking>> getReservations(Session session,String apiKey) async {
    final bookings = <Booking>[];
    final response = await http.get(
      Uri.parse('$_baseUrl/reservations'),
      headers: {
        'Api-Key': apiKey,
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final bookingData = jsonDecode(response.body)['bookings'] as List;
      //print("smoobu data: $bookingData");
      for (var booking in bookingData) {
        int apartmentId = booking['apartment']['id'] as int;
        var location = await Location.db.findFirstRow(session,
              where: (t) => t.externalId.equals('$apartmentId'),
        );
        
        if (location != null) {
          int bookingId = booking['id'] as int;
          String platform = booking['channel']['name'] as String;
          String startDate = booking['arrival'] as String;
          String endDate = booking['departure'] as String;
          DateTime start = DateTime.parse(startDate);
          DateTime end = DateTime.parse(endDate);

          int guestId = booking['guestId'] as int;
          var guestUser = await User.db.findFirstRow(session,
              where: (t) => t.externalId.equals('$guestId'),
          );
          int userId;
          if (guestUser == null) {
            print("guestUser is null");
            final guestName = booking['guest-name'] ?? '';
            final guestEmail = booking['email'] ?? '';
            final guestUserRow = User(name: guestName, email: guestEmail, externalId: "$guestId", userType: UserType.client);
            User newGuestUser = await User.db.insertRow(session, guestUserRow);
            userId = newGuestUser.id!;
            if(newGuestUser.authUserIdentifier == null) {
              final invitation = UserInvitation(code: getRandString(6), url: "www.nomadlodge.com", userId: userId, email: guestEmail);
              await UserInvitation.db.insertRow(session, invitation);
              //TODO: Send email with invitation code
            }
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