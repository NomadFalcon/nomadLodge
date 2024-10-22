import 'package:flutter/material.dart';
import '../../serverpod_client.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import '../popups/new_maintenace_popup.dart';
import '../creation/maintenance_creation_page.dart';
import 'package:intl/intl.dart';


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
    return Scaffold(
        backgroundColor: Colors.indigo.shade400,
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 0.0),
          child: (maintenaces.isNotEmpty) ? ListView(
            children: [
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
            ],
          ) : Text("There is no maintenaces to show"),
          
        ),
        floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.indigo,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
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
              )
            );
  }


  void getPopup(){
    
  }


}


