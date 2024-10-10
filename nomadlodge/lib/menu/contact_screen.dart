import 'package:flutter/material.dart';
import '../constants/text_constants.dart';
import '../widgets/screen_body.dart';

class ConstactScreen extends StatelessWidget {
  final TabController tabController;
  const ConstactScreen({Key? key, required this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBody(
        tabBarTitle: TextConstants.titleTab_3,
        tabController: tabController,
        tabIcon: Icons.contact_mail);
  }
}
