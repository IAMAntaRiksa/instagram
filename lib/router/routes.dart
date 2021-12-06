import 'package:flutter/material.dart';
import 'package:instagram/ui/buttom/buttom_navigation.dart';
import 'package:instagram/ui/profile/profile_screen.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ButtomNavigation.routeName:
        return MaterialPageRoute(builder: (_) => ButtomNavigation());
      case ProfileScreen.routeName:
        return MaterialPageRoute(builder: (_) => ProfileScreen());

      // case LikeScreen.routeName:
      //   var args = settings.arguments as List<Like>;
      //   return MaterialPageRoute(builder: (_) => LikeScreen(likes: args));
    }
  }
}
