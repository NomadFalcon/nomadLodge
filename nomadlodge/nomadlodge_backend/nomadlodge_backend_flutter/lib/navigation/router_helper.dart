
import 'package:flutter/material.dart';

import '../widgets/menu/dasboard.dart';
import '../widgets/entry_page.dart';
import '../widgets/account_page.dart';
import '../widgets/user_creation.dart';


class RouterHelper {
  static Map<String, WidgetBuilder> getRoutes(
      BuildContext context,
     ) {
    return {
      ...getAuthRoutes(
          context),
      ...getUserRoutes(context)
    };
  }

  static Map<String, WidgetBuilder> getAuthRoutes(
      BuildContext context,) {
    return {
      '/': (context) {
        return EntryPage(title:"Backend");
        },
      };
  }

  static Map<String, WidgetBuilder> getUserRoutes(
      BuildContext context) {
    return {
      
      '/createUser': (context) {
        return  UserCreationPage(
        );
      },
      
    };
  }
}
