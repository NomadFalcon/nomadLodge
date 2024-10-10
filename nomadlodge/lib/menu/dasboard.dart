import 'package:flutter/material.dart';
import 'package:nomadlodge/menu/contact_screen.dart';
import 'package:nomadlodge/menu/home_screen.dart.dart';
import 'package:nomadlodge/menu/product_screen.dart';
import '../constants/text_constants.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);
  @override
  State<DashboardPage> createState() => _HomePageState();
}

class _HomePageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //tabcontroller.index can be used to get the name of current index value of the tabview.
        title: Text(tabController.index == 0
            ? TextConstants.titleTab_1
            : tabController.index == 1
                ? TextConstants.titleTab_2
                : tabController.index == 2
                    ? TextConstants.titleTab_3
                    : TextConstants.titleTab_4),
        bottom: TabBar(controller: tabController, tabs: [
          Tab(
            text: TextConstants.titleTab_1,
            icon: Icon(
              Icons.home,
              color: Colors.indigo.shade500,
            ),
          ),
          Tab(
              text: TextConstants.titleTab_2,
              icon: Icon(
                Icons.star,
                color: Colors.indigo.shade500,
              )),
          Tab(
              text: TextConstants.titleTab_3,
              icon: Icon(
                Icons.contact_mail,
                color: Colors.indigo.shade500,
              )),
          Tab(
              text: TextConstants.titleTab_4,
              icon: Icon(
                Icons.star,
                color: Colors.indigo.shade500,
              )),
        ]),
      ),
      body: TabBarView(controller: tabController, children: [
        HomeScreen(
          tabController: tabController,
        ),
        ProductScreen(
          tabController: tabController,
        ),
        ConstactScreen(
          tabController: tabController,
        ),
        ProfileScreen(
          actions: [
            SignedOutAction((context) {
              Navigator.pushReplacementNamed(context, '/');
            }),
          ],
        ),
      ]),
    );
  }
}
