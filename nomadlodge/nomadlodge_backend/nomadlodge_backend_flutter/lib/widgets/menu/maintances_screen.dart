import 'package:flutter/material.dart';
import '../../serverpod_client.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import '../popups/new_maintenace_popup.dart';
import '../creation/maintenance_creation_page.dart';
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
    client.maintenance.getAll().then((value) {
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
          padding: const EdgeInsets.all(20),
          child: (maintenaces.isNotEmpty) ? ListView.builder(
            itemBuilder: (BuildContext context, int index) { 
              return ListTile(
                title: Text(maintenaces[index].description),
                subtitle: Text(maintenaces[index].location?.name ?? ""),
              );
             },
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
                      GrindOrRejectModalPage.build(
                        onSelectCreateCleaningForAllBookingsTapped: () {
                          Navigator.pop(context);
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


