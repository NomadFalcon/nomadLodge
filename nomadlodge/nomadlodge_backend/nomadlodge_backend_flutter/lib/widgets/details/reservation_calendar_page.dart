import 'package:flutter/material.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../../serverpod_client.dart';

class BookingDetails {
  final Booking booking;

  BookingDetails({required this.booking});

  List<DateTime> generatedDateRange() {
    List<DateTime> dates = [];
    for (int i = 0; i <= booking.end.difference(booking.start).inDays; i++) {
      dates.add(removeTime(booking.start.add(Duration(days: i))));
    }
    return dates;
  }
  DateTime removeTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day);
  }

  Color getColor() {
    return (booking.platform == "Booking.com") ? Colors.lightBlue : (booking.platform == "Airbnb") ? Colors.red : Colors.lightGreen;
  }

}

class ReservationCalendarPage extends StatefulWidget {
  final User currentUser;

  ReservationCalendarPage({required this.currentUser});

  @override
  _ReservationCalendarPageState createState() => _ReservationCalendarPageState();
}

class _ReservationCalendarPageState extends State<ReservationCalendarPage> {
  Map<DateTime, List<Booking>> _reservationEvents = {};
  List<BookingDetails> _selectedReservations = [];
  List<BookingDetails> reservations = [];

  void getReservations() {
    client.booking.getAll(widget.currentUser).then((value) {
      List<BookingDetails> newReservations = [];
      for (var reservation in value) {
        newReservations.add(BookingDetails(booking: reservation));
      }
      setState(() {
        reservations = newReservations;
        _selectedReservations = [];
      });
    });
  }
  @override
  void initState() {
    super.initState();
    getReservations();

  }


  DateTime removeTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [ SfCalendar(
      view: CalendarView.month,
      showNavigationArrow: true,
      dataSource: BookingDataSource(reservations),
      monthCellBuilder: monthCellBuilder,
      monthViewSettings: const MonthViewSettings(
          appointmentDisplayMode: MonthAppointmentDisplayMode.indicator),
    ),],);
  }

  Widget monthCellBuilder(BuildContext context, MonthCellDetails details) {
  BookingDetails? booking =  reservations.cast<BookingDetails?>().firstWhere((element) => element!.generatedDateRange().contains(removeTime(details.date)), orElse: () => null);
     
      return Container(
        color: (booking != null) ? booking.getColor() : Colors.white,
        child: Text(
          details.date.day.toString(),
        ),
      );
}



  /*
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: DateTime.now(),
            selectedDayPredicate: (day) {
              return _selectedReservations.isNotEmpty && _selectedReservations.any((reservation) => isSameDay(reservation.start, day));
            },
            onDaySelected: _onDaySelected,
            eventLoader: (day) {
              return _reservationEvents[day] ?? [];
            },
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, date, events) {
                if (events.isNotEmpty) {
                  return Positioned(
                    right: 1,
                    bottom: 1,
                    child: _buildEventsMarker(date, events),
                  );
                }
                return SizedBox();
              },
            ),
          ),
          ..._selectedReservations.map((booking) => ListTile(
                title: Text(booking.platform),
              )),
        ],
      );
  }
  */

}


class BookingDataSource extends CalendarDataSource {
  /// Creates a meeting data source, which used to set the appointment
  /// collection to the calendar
  BookingDataSource(List<BookingDetails> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return _getBookingData(index).booking.start;
  }

  @override
  DateTime getEndTime(int index) {
    return _getBookingData(index).booking.end;
  }

  @override
  String getSubject(int index) {
    return _getBookingData(index).booking.platform;
  }

  @override
  Color getColor(int index) {
    return (_getBookingData(index).booking.platform == "Booking.com") ? Colors.lightBlue : (_getBookingData(index).booking.platform == "Airbnb") ? Colors.red : Colors.lightGreen;
  }

  @override
  bool isAllDay(int index) {
    return true;
  }

  BookingDetails _getBookingData(int index) {
    final dynamic meeting = appointments![index];
    late final BookingDetails meetingData;
    if (meeting is BookingDetails) {
      meetingData = meeting;
    }

    return meetingData;
  }
}