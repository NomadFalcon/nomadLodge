import 'package:flutter/material.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import '../../constants/text_constants.dart';
import '../screen_body.dart';
import '../../serverpod_client.dart';

import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';


class LocationScreen extends StatefulWidget {

  const LocationScreen(
      {Key? key, required this.currentUser})
      : super(key: key);
  final User currentUser;
  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  bool isExpanded = false;

  List<Location> locations = [];

  @override
  void initState() {
    getLocations();
    super.initState();
  }

  void getLocations() {
    client.location.getAll(widget.currentUser).then((value) {
      setState(() {
        locations = value;
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
          child: (locations.isNotEmpty) ? ListView.builder(
            itemBuilder: (BuildContext context, int index) { 
              return  Card(
            child: ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            title: Text(locations[index].name),
            subtitle: Text("Number of rooms: ${locations[index].rooms}"),
            trailing: ElevatedButton(
              onPressed: () {
              // Add your reload logic here
              print('Reload button pressed');
            },
            child: const Text('See more'),
        ),
      ),
    );
              
             
             },
          ) : Text("There is no location to show"),
          
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
              )
            );
  }
}
