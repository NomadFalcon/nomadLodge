import 'package:flutter/material.dart';
import '../../serverpod_client.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'package:intl/intl.dart';
import '../../external_ui/external_ui_components.dart';

class ReservationsScreen extends StatefulWidget {

  const ReservationsScreen(
      {Key? key, required this.currentUser})
      : super(key: key);
  final User currentUser;
  @override
  State<ReservationsScreen> createState() => _ReservationsScreenState();
}

class _ReservationsScreenState extends State<ReservationsScreen> {
  bool isExpanded = false;

  List<Booking> reservations = [];

  @override
  void initState() {
    getReservations();
    super.initState();
  }

  void getReservations() {
    client.booking.getAll(widget.currentUser).then((value) {
      setState(() {
        reservations = value;
      });
    });
  }

  

@override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               ElevatedButton(
                      onPressed: () {
                        // Add your reload logic here
                       WoltModalSheet.show(
                    context: context,
                    modalTypeBuilder: (context) {
                      return WoltModalType.dialog();
                    },
                    pageListBuilder: (bottomSheetContext) => [
                      SliverWoltModalSheetPage(
                        mainContentSliversBuilder: (context) => [
                          SliverList.builder(
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text('Index is $index'),
                                onTap: Navigator.of(bottomSheetContext).pop,
                          );
                        },
                      ),
                    ],
                  )
                ],
              );
            
            
                      },
                      child: const Text('Add new reservation'),
                    ),
              gapH16,
              Divider(),
              for (var reservation in reservations)
                Card(
                  color: (reservation.platform == "Booking.com") ? Colors.lightBlue : (reservation.platform == "Airbnb") ? Colors.red : Colors.lightGreen,
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    textColor: Colors.white,
                    title: Text(reservation.user?.name ?? "Unknown"),
                    subtitle: Text("${reservation.platform}\n${DateFormat('dd-MM-yyyy').format(reservation.start)} to ${DateFormat('dd-MM-yyyy').format(reservation.end)}"),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Add your reload logic here
                        print('Reload button pressed');
                      },
                      child: const Text('See more'),
                    ),
                  ),
                ),(reservations.isEmpty) ?  Text("There are no reservations to show") : gapH16,
          ], 
        );
  }

 }

