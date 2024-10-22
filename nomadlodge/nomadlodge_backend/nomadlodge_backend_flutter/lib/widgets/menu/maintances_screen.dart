import 'package:flutter/material.dart';
import '../../serverpod_client.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import '../popups/new_maintenace_popup.dart';
import '../creation/maintenance_creation_page.dart';
import 'package:intl/intl.dart';
import '../../external_ui/external_ui_components.dart';


class MaintenancesScreen extends StatefulWidget {

  const MaintenancesScreen(
      {Key? key, required this.currentUser})
      : super(key: key);

  final User currentUser;
  @override
  State<MaintenancesScreen> createState() => _MaintenancesScreenState();
}

class _MaintenancesScreenState extends State<MaintenancesScreen> {
  bool isExpanded = false;

  List<Maintenance> maintenaces = [];

  @override
  void initState() {
    getMaintenaces();
    super.initState();
  }

  void getMaintenaces() {
    client.cleaning.getAllByUsersLocations(widget.currentUser.id!).then((value) {
      setState(() {
        maintenaces = value;
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
                      NewMaintenanceModalPage.build(
                        onSelectCreateCleaningForAllBookingsTapped: () {
                          client.cleaning.createCleaningMaintenancesforEachBookingInUsersLocations(widget.currentUser.id!).then((value) {
                            Navigator.pop(context);
                          });
                          //Navigator.pop(context);
                        },
                    ),
                    MaintenanceCreationModalPage.build(
                      onMaintenanceCreated: () {
                        Navigator.pop(context);
                      },
                    ),
                ],
              );
            
                      },
                      child: const Text('Add new maintenance'),
                    ),
              gapH16,
              Divider(),
              for (var maintenace in maintenaces)
                Card(
                  color: (maintenace.maintenancetype == MaintenanceType.cleaning) ? Colors.lightBlue : Colors.lightGreen,
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    title: Text("${maintenace.maintenancetype.name} for ${maintenace.location?.name ?? "Unknown"}"),
                    subtitle: Text("Date: ${DateFormat('dd-MM-yyyy').format(maintenace.start) }"),
                    textColor: Colors.white,
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Add your reload logic here
                        print('Reload button pressed');
                      },
                      child: const Text('See more'),
                    ),
                  ),
                ),
                (maintenaces.isEmpty) ?  Text("There are no maintenaces to show") : gapH16,
          ], 
        );
  }
}


