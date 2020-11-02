import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterboilerplate/pages/pages.dart';
import 'package:page_transition/page_transition.dart';
import 'pages/splash/splash.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => SplashPage());
    case '/Login':
      return PageTransition(
        duration: Duration(milliseconds: 500),
        child: LoginPage(),
        type: PageTransitionType.fade,
        settings: settings,
      );
    default:
      return MaterialPageRoute(builder: (_) => SplashPage());
  }
}
