import 'package:flutter/material.dart';
//i'm not using this file

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic>? to(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  Future<dynamic>? replace(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }
}
