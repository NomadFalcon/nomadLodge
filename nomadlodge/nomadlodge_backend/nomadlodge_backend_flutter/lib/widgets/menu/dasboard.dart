import 'package:flutter/material.dart';
import 'package:nomadlodge_backend_flutter/widgets/details/locations_details_page.dart';
import 'package:nomadlodge_backend_flutter/widgets/menu/maintances_screen.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'reservations_screen.dart';
import 'locations_screen.dart.dart';
import 'products_screen.dart';
import '../details/maintenance_calendar_page.dart';
import '../details/reservation_calendar_page.dart';
import '../account_page.dart';
import '../../messaging_service.dart';

import '../../external_ui/external_ui_components.dart';
import '../../constants/text_constants.dart';
import '../../serverpod_client.dart';


final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();


class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key, required this.currentUser, required this.messagingService}) : super(key: key);

  final User currentUser;
  final MessagingService messagingService;

  @override
  State<DashboardPage> createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage>
    with SingleTickerProviderStateMixin {

  bool needsToSetupUser = false;

  int _selectedIndex = 0;
  Location? _selectedLocation;
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

  Widget getCurrentWidget(int index) {
    toggleDrawer();
    if(_selectedLocation != null) {
      return LocationDetailsPage(location: _selectedLocation!, inviteNewUser: (p0, p1) {
          getLocations();
      },);
    }
    if (index == SideBarItem.locations.index) {
      return LocationScreen(
        locations: locations,
        currentUser: widget.currentUser,
        getLocations: () => getLocations(),
      );
    }
    if (index == SideBarItem.reservations.index) {
      return ReservationsScreen(
          currentUser: widget.currentUser
        );
    }
    if (index == SideBarItem.reservationsCalendar.index) {
      return ReservationCalendarPage(
          currentUser: widget.currentUser
        );
    }
    if (index == SideBarItem.maintenances.index) {
      return MaintenancesScreen(
          currentUser: widget.currentUser
        );
    }
    if (index == SideBarItem.maintenancesCalendar.index) {
      return MaintenanceCalendarPage(
          currentUser: widget.currentUser
        );
    }
    if (index == SideBarItem.products.index) {
      return ProductScreen(
          currentUser: widget.currentUser
        );
    }
    if (index == SideBarItem.account.index) {
      return AccountPage(key:ValueKey(AccountPage), currentUser: widget.currentUser, messagingService: widget.messagingService);
    }

     return LocationScreen(
          locations: locations,
          currentUser: widget.currentUser,
          getLocations: () => getLocations(),
        );

       
  }

String getHeaderTitle(int index) {
    if (index == SideBarItem.locations.index) {
      return TextConstants.locationsTitleTab;
    }
    if (index == SideBarItem.reservations.index) {
      return TextConstants.reservationsTitleTab;
    }
    if (index == SideBarItem.reservationsCalendar.index) {
      return TextConstants.reservationsTitleTab;
    }
    if (index == SideBarItem.maintenances.index) {
       return TextConstants.maintenacesTitleTab;
    }
    if (index == SideBarItem.maintenancesCalendar.index) {
       return TextConstants.maintenacesTitleTab;
    }
    if (index == SideBarItem.maintenances.index) {
       return TextConstants.maintenacesTitleTab;
    }
    if (index == SideBarItem.products.index) {
     return TextConstants.productsTitleTab;
    }
    if (index == SideBarItem.account.index) {
     return TextConstants.accountTitleTab;
    }
    return "";
}
toggleDrawer()  {
  if (_drawerKey.currentState!.isDrawerOpen) {
    _drawerKey.currentState!.openDrawer();
  } else {
    _drawerKey.currentState!.openEndDrawer();
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //tabcontroller.index can be used to get the name of current index value of the tabview.
        title: Text(getHeaderTitle(_selectedIndex)),
      ),
      key: _drawerKey,
      drawer: Responsive.isMobile(context)
          ? Sidebar(
              currentUser: widget.currentUser,
              locations: locations,
              onChangedWithLocation: (i, l) {
                setState(() {
                  _selectedIndex = i;
                  _selectedLocation = l;
                });
              },
              selectedIndex: _selectedIndex,
              onChanged: (i) {
                
                setState(() {
                  _selectedIndex = i;
                  _selectedLocation = null;
                });
              },
            )
          : null,
      body: Row(
        children: [
          if (Responsive.isDesktop(context))
            Sidebar(
              currentUser: widget.currentUser,
              locations: locations,
              onChangedWithLocation: (i, l) {
                setState(() {
                  _selectedIndex = i;
                  _selectedLocation = l;
                });
              },
              selectedIndex: _selectedIndex,
              onChanged: (i) => setState(() => _selectedIndex = i),
            ),
          if (Responsive.isTablet(context))
            TabSidebar(
              selectedIndex: _selectedIndex,
              onChanged: (i) => setState(() => _selectedIndex = i),
            ),
          Expanded(
            child: Column(
              children: [
                //Header(drawerKey: _drawerKey),
                Expanded(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1360),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppDefaults.padding *
                                (Responsive.isMobile(context) ? 1 : 1.5),
                          ),
                          child: SafeArea(
                            child: getCurrentWidget(_selectedIndex),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


