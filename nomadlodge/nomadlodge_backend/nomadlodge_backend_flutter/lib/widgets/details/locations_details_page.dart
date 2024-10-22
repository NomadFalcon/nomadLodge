import 'package:flutter/material.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';
import '../creation/user_creation.dart';

class LocationDetailsPage extends StatefulWidget {

    const LocationDetailsPage(
      {Key? key, required this.location, required this.inviteNewUser})
      : super(key: key);
  final Location location;
  final Function(User, Location) inviteNewUser;
  
    @override
    _LocationDetailsPageState createState() => _LocationDetailsPageState();
}

class _LocationDetailsPageState extends State<LocationDetailsPage> {
    List<User> users = [];
    List<UserInvitation> invitations = [];
    List<String> products = [];

    @override
  void initState() {
    print("Location details page");
    print(widget.location);
    users = widget.location.team?.users ?? [];
    print("users: $users");
    users = users.where((element) => element.authUserIdentifier != null).toList();
    invitations = widget.location.team?.invitations ?? [];
    invitations = invitations.where((element) => element.hasBeenUsed == false).toList();
    super.initState();
  }
    

    @override
    Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: Text(widget.location.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section for Location Details
            Text('Location Details', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Location: ${widget.location.name}', style: TextStyle(fontSize: 16)),
            Text('Number of rooms: ${widget.location.rooms}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),

            // Section for Location Team
            Text('Location Team', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
              onPressed: () {
                WoltModalSheet.show(
                    context: context,
                    modalTypeBuilder: (context) {
                      return WoltModalType.dialog();
                    },
                    pageListBuilder: (bottomSheetContext) => [
                      NonScrollingWoltModalSheetPage(
                        child: UserCreationPage(availableUserType: [UserType.cleaner, UserType.worker], isUserForAdditionalUser: true, location: widget.location ,onUserCreated: (user){
                          Navigator.of(bottomSheetContext).pop();
                          //create an invitation for the user
                          widget.inviteNewUser(user, widget.location);
                         
                        },),
                      ),
                ],
              );
              },
              child: const Text('Add User'),
          ),
        ),
            SizedBox(height: 10),
            Text('Users', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            for (var user in users) Text(user.name, style: TextStyle(fontSize: 14)),
            SizedBox(height: 10),
            Text('Invitations', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            for (var invitation in invitations) Text(invitation.email, style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),

            // Section for Products
            Text('Products', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            for (var product in products) Text(product, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
    }
}