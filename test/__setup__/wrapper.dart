import 'package:flutter/material.dart';
import 'package:seed/presentation/routes.dart';

Widget wrapWidget(Widget widget, NavigatorObserver observer) {
  final routes = Routes.getAll()..remove('/');
  return MaterialApp(
    home: widget,
    routes: routes,
    navigatorObservers: [observer],
  );
}

Widget wrapWidgetWithScaffold(Widget widget, NavigatorObserver observer) {
  final routes = Routes.getAll()..remove('/');
  return MaterialApp(
    home: Scaffold(body: widget),
    routes: routes,
    navigatorObservers: [observer],
  );
}
