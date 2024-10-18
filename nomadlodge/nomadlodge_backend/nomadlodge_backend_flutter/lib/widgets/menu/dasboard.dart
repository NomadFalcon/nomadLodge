import 'package:flutter/material.dart';
import 'package:nomadlodge_backend_flutter/widgets/menu/maintances_screen.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'reservations_screen.dart';
import 'locations_screen.dart.dart';
import 'products_screen.dart';
import '../account_page.dart';
import '../../constants/text_constants.dart';





class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key, required this.currentUser}) : super(key: key);

  final User currentUser;


  @override
  State<DashboardPage> createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool needsToSetupUser = false;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  String getTabTitle(int index) {
    switch (index) {
      case 0:
        return TextConstants.locationsTitleTab;
      case 1:
        return TextConstants.productsTitleTab;
      case 2:
        return TextConstants.reservationsTitleTab;
      case 3:
        return TextConstants.maintenacesTitleTab;
      case 4:
        return TextConstants.accountTitleTab;
      default:
        return "";
    }

  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //tabcontroller.index can be used to get the name of current index value of the tabview.
        title: Text(getTabTitle(tabController.index)),
        bottom: TabBar(controller: tabController, tabs: [
          Tab(
            text: TextConstants.locationsTitleTab,
            icon: Icon(
              Icons.home,
              color: Colors.indigo.shade500,
            ),
          ),
          Tab(
              text: TextConstants.productsTitleTab,
              icon: Icon(
                Icons.star,
                color: Colors.indigo.shade500,
              )),
          Tab(
              text: TextConstants.reservationsTitleTab,
              icon: Icon(
                Icons.contact_mail,
                color: Colors.indigo.shade500,
              )),
          Tab(
              text: TextConstants.maintenacesTitleTab,
              icon: Icon(
                Icons.star,
                color: Colors.indigo.shade500,
              )),
              Tab(
              text: TextConstants.accountTitleTab,
              icon: Icon(
                Icons.star,
                color: Colors.indigo.shade500,
              )),
        ]),
      ),
      body: TabBarView(controller: tabController, children: [
        LocationScreen(
          currentUser: widget.currentUser
        ),
        ProductScreen(
          currentUser: widget.currentUser
        ),
        ReservationsScreen(
          currentUser: widget.currentUser
        ),
        MaintenancesScreen(
          currentUser: widget.currentUser
        ),
        AccountPage(key:ValueKey(AccountPage), currentUser: widget.currentUser,),
      ]),
    );
  }
}
