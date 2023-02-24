import 'package:Game_Finder/Features/Dashboard/Presentation/Views/dashboard.dart';
import 'package:Game_Finder/Features/Login/Presentation/login.dart';
import 'package:Game_Finder/Features/main_View.dart';
import 'package:flutter/cupertino.dart';

class Navigation {
  static final navKey = GlobalKey<NavigatorState>();
  static const mainView = '/mainView';
  static const login = '/login';
  static const dashboard = '/dashboard';
}

Route? generateRoutes(RouteSettings settings) {
  final args = settings.arguments;

  switch (settings.name) {
    case Navigation.mainView:
      return buildRoute(settings, const MainView());
    case Navigation.login:
      return buildRoute(settings, Login());
    case Navigation.dashboard:
      return buildRoute(settings, const Dashboard());
    default:
      return null;
  }
}

CupertinoPageRoute buildRoute(RouteSettings settings, Widget builder) {
  return CupertinoPageRoute(
    settings: settings,
    builder: (BuildContext context) => builder,
  );
}
