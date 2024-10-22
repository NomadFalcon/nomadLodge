import 'package:flutter/material.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../serverpod_client.dart';


class ReservationCalendarPage extends StatefulWidget {
  final User currentUser;

  ReservationCalendarPage({required this.currentUser});

  @override
  _ReservationCalendarPageState createState() => _ReservationCalendarPageState();
}

class _ReservationCalendarPageState extends State<ReservationCalendarPage> {
  Map<DateTime, List<Booking>> _reservationEvents = {};
  List<Booking> _selectedReservations = [];
  List<Booking> reservations = [];

  void getReservations() {
    client.booking.getAll(widget.currentUser).then((value) {
       Map<DateTime, List<Booking>> newReservationsEvents = {};
      for (var reservation in value) {
        if (newReservationsEvents[reservation.start] == null) {
          newReservationsEvents[reservation.start] = [];
        }
        newReservationsEvents[reservation.start]!.add(reservation);
      }
      setState(() {
        _reservationEvents = newReservationsEvents;
        reservations = value;
        _selectedReservations = [];
      });
    });
  }
  @override
  void initState() {
    super.initState();
    getReservations();

  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      _selectedReservations = _reservationEvents[day] ?? [];
    });
  }

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

  Widget _buildEventsMarker(DateTime date, List events) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      width: 16.0,
      height: 16.0,
      child: Center(
        child: Text(
          '${events.length}',
          style: TextStyle().copyWith(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}