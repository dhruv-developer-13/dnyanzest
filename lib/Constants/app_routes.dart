import 'package:dnyanzest/Screens/StudentScreens/StudentNavigationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  //Yahan saare Routes Declared Rahenge

  //Student Routes
  static const String studentHome = "/studentHome";

  //Teachers Routes

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case studentHome:
        return MaterialPageRoute(
          builder: (context) => StudentNavigationScreen(),
          settings: settings,
        );
      default:
        return CupertinoPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
