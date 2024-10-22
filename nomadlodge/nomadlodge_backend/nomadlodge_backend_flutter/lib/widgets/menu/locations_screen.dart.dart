import 'package:flutter/material.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import '../../constants/text_constants.dart';
import '../screen_body.dart';
import '../../serverpod_client.dart';
import '../details/locations_details_page.dart';

import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';
import '../../external_ui/external_ui_components.dart';


class LocationScreen extends StatefulWidget {

  const LocationScreen(
      {Key? key, required this.currentUser, required this.locations, required this.getLocations})
      : super(key: key);
  final User currentUser;
  final List<Location> locations;
  final Function() getLocations;
  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  bool isExpanded = false;



  @override
  void initState() {
 
    super.initState();
  }

 

  void inviteNewUser(User user, Location location) async {
    widget.getLocations();
  }

  


  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              for (var location in widget.locations)
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
                (widget.locations.isEmpty) ?  Text("There are no locations to show") : gapH16,
          ], 
        );
  }
}
