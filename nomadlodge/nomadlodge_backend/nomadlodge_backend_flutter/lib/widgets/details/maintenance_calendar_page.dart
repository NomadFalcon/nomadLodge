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
  Map<DateTime, List<Maintenance>> _maintenanceEvents = {};
  List<Maintenance> _selectedMaintenances = List.empty();
  List<Maintenance> maintenances = [];
  DateTime _selectedDate = DateTime.now();

  void getMaintenaces() {
    client.cleaning.getAllByUsersLocations(widget.currentUser.id!).then((value) {
      Map<DateTime, List<Maintenance>> newMaintenanceEvents = {};
      for (var maintenance in value) {
        if (newMaintenanceEvents[maintenance.start] == null) {
          newMaintenanceEvents[maintenance.start] = [];
        }
        newMaintenanceEvents[maintenance.start]!.add(maintenance);
      }
      setState(() {
        _maintenanceEvents = newMaintenanceEvents;
        maintenances = value;
        _selectedMaintenances = [];
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getMaintenaces();
    
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {

    setState(() {
      _selectedDate = day;
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
            focusedDay: _selectedDate,
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
          ..._selectedMaintenances.map((maintenance) => InkWell(child: ListTile(
                title: Text("${maintenance.maintenancetype.name} for ${maintenance.location?.name ?? "Unknown"}"),
                subtitle: Text("By: ${maintenance.user?.name ?? "Still unknown"}"),
              ),
              onTap: () {
                // Open maintenance details
              },
              ),) ,
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