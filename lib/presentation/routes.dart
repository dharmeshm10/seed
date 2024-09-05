import 'package:flutter/material.dart';

import 'package:seed/presentation/journey/todo/todo_routes.dart';
import 'package:seed/presentation/journey/dashboard/dashboard_routes.dart';

class Routes {
  static Map<String, WidgetBuilder> _getCombinedRoutes() => {
        ...DashboardRoutes.getAll(),
        ...TodoRoutes.getAll(),
      };

  static Map<String, WidgetBuilder> getAll() => _getCombinedRoutes();
}
