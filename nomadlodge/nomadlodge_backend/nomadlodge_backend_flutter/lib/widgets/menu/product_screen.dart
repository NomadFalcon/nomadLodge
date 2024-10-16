import 'package:flutter/material.dart';
import '../../constants/text_constants.dart';
import '../screen_body.dart';

class ProductScreen extends StatelessWidget {
  final TabController tabController;
  const ProductScreen({Key? key, required this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBody(
        tabBarTitle: TextConstants.titleTab_2,
        tabController: tabController,
        tabIcon: Icons.star);
  }
}
