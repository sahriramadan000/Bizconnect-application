import 'package:bizconnect_application/controllers/explore_page_controller.dart';
import 'package:bizconnect_application/controllers/home_page_controller.dart';
import 'package:bizconnect_application/controllers/notification_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:bizconnect_application/splash_screen.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => SplashScreen(),
    '/homepage': (BuildContext context) => HomePageController(),
    '/explore': (BuildContext context) => ExplorePageController(),
    '/notification': (BuildContext context) => NotificationPageController(),
  };
}