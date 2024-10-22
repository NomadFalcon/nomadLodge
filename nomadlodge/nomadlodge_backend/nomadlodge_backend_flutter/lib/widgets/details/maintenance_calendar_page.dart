import 'package:flutter/material.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../serverpod_client.dart';


class MaintenanceCalendarPage extends StatefulWidget {
  final User currentUser;

  MaintenanceCalendarPage({required this.currentUser});

  @override
  _MaintenanceCalendarPageState createState() => _MaintenanceCalendarPageState();
}

class _MaintenanceCalendarPageState extends State<MaintenanceCalendarPage> {
  late Map<DateTime, List<Maintenance>> _maintenanceEvents;
  late List<Maintenance> _selectedMaintenances;
  List<Maintenance> maintenances = [];

    void getMaintenaces() {
    client.cleaning.getAllByUsersLocations(widget.currentUser.id!).then((value) {
      setState(() {
        maintenances = value;
      });
    });
  }
  @override
  void initState() {
    super.initState();
    _maintenanceEvents = {};
    maintenances.forEach((maintenance) {
      if (_maintenanceEvents[maintenance.start] == null) {
        _maintenanceEvents[maintenance.start] = [];
      }
      _maintenanceEvents[maintenance.start]!.add(maintenance);
    });
    _selectedMaintenances = [];
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      _selectedMaintenances = _maintenanceEvents[day] ?? [];
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
              return _selectedMaintenances.isNotEmpty && _selectedMaintenances.any((maintenance) => isSameDay(maintenance.start, day));
            },
            onDaySelected: _onDaySelected,
            eventLoader: (day) {
              return _maintenanceEvents[day] ?? [];
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
          ..._selectedMaintenances.map((maintenance) => ListTile(
                title: Text(maintenance.description),
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