import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';

import '../../../pages/dashboard/widgets/theme_tabs.dart';
import '../../../responsive.dart';
import '../../../theme/app_colors.dart';
import '../../constants/config.dart';
import '../../constants/defaults.dart';
import '../../constants/ghaps.dart';
import 'customer_info.dart';
import 'menu_tile.dart';

import '../../../../../constants/text_constants.dart';

enum SideBarItem { locations, reservationsTitle, reservations, reservationsCalendar, maintenancesTitle, maintenances, maintenancesCalendar, products, account }

class Sidebar extends StatelessWidget {
  const Sidebar({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
    required this.onChangedWithLocation,
    required this.currentUser,
    required this.locations,
  });

  final int selectedIndex;
  final void Function(int) onChanged;
  final void Function(int, Location) onChangedWithLocation;
  final User currentUser;
  final List<Location> locations;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: Responsive.isMobile(context) ? double.infinity : null,
      // width: MediaQuery.of(context).size.width < 1300 ? 260 : null,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (Responsive.isMobile(context))
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDefaults.padding,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset('../assets/icons/close_filled.svg'),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDefaults.padding,
                    vertical: AppDefaults.padding * 1.5,
                  ),
                  child: SvgPicture.asset(AppConfig.logo),
                ),
              ],
            ),
            const Divider(),
            gapH16,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDefaults.padding,
                ),
                child: ListView(
                  children: [
                    //Locations
                    MenuTile(
                      isActive: selectedIndex == SideBarItem.locations.index,
                      title: TextConstants.locationsTitleTab,
                      activeIconSrc: "assets/icons/home_filled.svg",
                      inactiveIconSrc: "assets/icons/home_light.svg",
                      onPressed: () {
                        onChanged.call(SideBarItem.locations.index);
                      },
                    ),
                    // Mainten
                    ExpansionTile(
                      initiallyExpanded: selectedIndex == SideBarItem.reservationsTitle.index ,
                      title: Text(
                        TextConstants.reservationsTitleTab,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.bodyMedium!.color,
                        ),
                      ),
                      children: [
                        MenuTile(
                          isActive: selectedIndex == SideBarItem.reservations.index,
                          isSubmenu: true,
                          title: "Dashboard",
                          onPressed: () {
                            onChanged.call(SideBarItem.reservations.index);
                          },
                        ),
                        MenuTile(
                          isActive: selectedIndex == SideBarItem.reservationsCalendar.index,
                          isSubmenu: true,
                          title: "Calendar",
                          onPressed: () {
                            onChanged.call(SideBarItem.reservationsCalendar.index);
                          },
                        ),
                      ],
                    ),
                    // Customers
                    ExpansionTile(
                      initiallyExpanded:
                          selectedIndex == SideBarItem.maintenancesTitle.index,
                      title: Text(
                        TextConstants.maintenacesTitleTab,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.bodyMedium!.color,
                        ),
                      ),
                      children: [
                        MenuTile(
                          isActive: selectedIndex == SideBarItem.maintenances.index,
                          isSubmenu: true,
                          title: "Overview",
                          count: 16,
                          onPressed: () {
                            onChanged.call(SideBarItem.maintenances.index);
                          },
                        ),
                        MenuTile(
                          isActive: selectedIndex == SideBarItem.maintenancesCalendar.index,
                          isSubmenu: true,
                          title: "Maintenance Calendar",
                          onPressed: () {

                            onChanged.call(SideBarItem.maintenancesCalendar.index);
                          },
                        ),
                      ],
                    ),],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Column(
                children: [
                  if (Responsive.isMobile(context))
                     CustomerInfo(
                      onCancelPressed: () {
                        onChanged.call(SideBarItem.account.index);
                      },
                      name: currentUser.name,
                      designation: currentUser.userType.toString(),
                      imageSrc:
                          'https://cdn.create.vista.com/api/media/small/339818716/stock-photo-doubtful-hispanic-man-looking-with-disbelief-expression',
                    ),
                  gapH8,
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
