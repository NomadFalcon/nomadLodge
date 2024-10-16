import 'package:flutter/material.dart';
import '../../constants/text_constants.dart';
import '../screen_body.dart';

class HomeScreen extends StatelessWidget {
  final TabController tabController;
  const HomeScreen({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBody(
        tabBarTitle: TextConstants.titleTab_1,
        tabController: tabController,
        tabIcon: Icons.home);
  }
}
