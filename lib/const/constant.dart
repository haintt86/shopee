import 'package:cupertino_flutter_app/pages/newsfeed_page.dart';
import 'package:cupertino_flutter_app/pages/nofication_page.dart';
import 'package:cupertino_flutter_app/pages/setting_page.dart';
import 'package:flutter/material.dart';

class RoutePaths {
  static const String Home = 'newsfeed';
  static const String Notification = 'notification';
  static const String Setting = 'setting';
}

Map<String, WidgetBuilder> appRoutes = {
  RoutePaths.Home : (BuildContext context) => NewsFeedTab(),
  RoutePaths.Notification: (BuildContext context) => NotificationPage(),
  RoutePaths.Setting: (BuildContext context) => SettingPage(),
};

