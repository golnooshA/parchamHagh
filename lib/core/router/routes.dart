import 'package:flutter/material.dart';
import 'package:parcham_hagh/core/router/route_transition.dart';
import 'package:parcham_hagh/page/menu/menu_page.dart';
import 'package:provider/provider.dart';

class Routes {
  static const home = '/';
  static const menu = "/menu";

  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    Widget page;
    switch (settings.name) {
      case Routes.menu:
        page = MenuPage();
        break;

    }
    return PageRouteBuilder(
        pageBuilder: (context, __, ___) => page,
        transitionDuration: Duration(milliseconds: 200),
        transitionsBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation, Widget child) {
          final mediaQuery = MediaQuery.of(context);
          return DefaultRouteTransition(
              child: MediaQuery(
                data: mediaQuery.copyWith(
                  textScaleFactor: mediaQuery.devicePixelRatio > 2 ? mediaQuery.textScaleFactor : 0.85
                ),
                child: page,
              ),
              animation: animation,
              secondaryAnimation: secondaryAnimation,
            );
        });
  }
}
