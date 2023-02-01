import 'package:expense_manager/Features/Login/Presentation/login.dart';
import 'package:expense_manager/Features/main_View.dart';
import 'package:flutter/cupertino.dart';

class Navigation {
  static final navKey = GlobalKey<NavigatorState>();

  static const mainView = '/mainView';
  static const login = '/login';
}

Route? generateRoutes(RouteSettings settings) {
  final args = settings.arguments;

  switch (settings.name) {
    case Navigation.mainView:
      return buildRoute(settings, const MainView());
    case Navigation.login:
      return buildRoute(settings, Login());
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
