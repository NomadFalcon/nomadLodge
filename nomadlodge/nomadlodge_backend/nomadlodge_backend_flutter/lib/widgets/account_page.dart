import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

import '../serverpod_client.dart';
import '../widgets/creation/integration_creation_page.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';



class AccountPage extends StatefulWidget {
  const AccountPage({super.key, required this.currentUser});
  
  final User currentUser;

  @override
  AccountPageState createState() => AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  // These fields hold the last result or error message that we've received from
  // the server or null if no result exists yet.
  List<Integration> integrations = [];
 @override
  void initState() {
    super.initState(); 
    // Make sure that we rebuild the page if signed in status changes.
    getIntegration();
    sessionManager.addListener(() {
      setState(() {});
    });
  }
  void getIntegration() {
    client.integration.getIntegrations(widget.currentUser!).then((value) {
      setState(() {
        integrations = value;
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
          child: ListView(
      children: [
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          leading: CircularUserImage(
            userInfo: sessionManager.signedInUser,
            size: 42,
          ),
          title: Text(sessionManager.signedInUser!.userName!),
          subtitle: Text(sessionManager.signedInUser!.email ?? ''),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () {
              sessionManager.signOut();
            },
            child: const Text('Sign out'),
          ),
        ),
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          title: const Text('Integrations'),
        ),
        for (var integration in integrations)
          Card(
            child: ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            title: Text(integration.integrationType.name),
            subtitle: Text( integration.lastReloadDate != null ? 'Last updated: ${integration.lastReloadDate}' : 'Never updated'),
            trailing: ElevatedButton(
              onPressed: () {
              // Add your reload logic here
              client.integration.reloadIntegrations(widget.currentUser).then((value) {
                getIntegration();
              });

            },
            child: const Text('Reload'),
        ),
      ),
    ),
          
      ],
    ),
          
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
                      NonScrollingWoltModalSheetPage(
                        child: IntegrationCreationPage(currentUser: widget.currentUser,onIntegrationCreated: (){
                          Navigator.of(bottomSheetContext).pop();
                          getIntegration();
                        },),
                      ),
                ],
              );
            },
              )
            );
  }


}


