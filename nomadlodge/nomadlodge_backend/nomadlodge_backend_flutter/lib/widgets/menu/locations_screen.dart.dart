import 'package:flutter/material.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import '../../constants/text_constants.dart';
import '../screen_body.dart';
import '../../serverpod_client.dart';
import '../details/locations_details_page.dart';

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
      print("got locations");
      print(value[1]);
      setState(() {
        locations = value;
      });
    });
  }

  void inviteNewUser(User user, Location location) async {
    getLocations();
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
          child: (locations.isNotEmpty) ? 
          ListView(children: [
            for (var location in locations)
                Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    title: Text(location.name),
                    subtitle: Text("Number of rooms: ${location.rooms}"),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Add your reload logic here
                        print('Reload button pressed');
                        Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LocationDetailsPage(
                                    location: location,
                                    inviteNewUser: (user, location) {
                                      // Add your invite logic here
                                      print('Invite button pressed');
                                      inviteNewUser(user, location);
                                    },
                                  )));
                      },
                      child: const Text('See more'),
                    ),
                  ),
                ),
          ],) : Text("There are no locations to show"),
          
          
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
