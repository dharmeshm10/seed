import 'package:flutter/material.dart';

import 'package:seed/common/constants/route_constants.dart';
import 'package:seed/presentation/journey/dashboard/dashboard_screen.dart';

class DashboardRoutes {
  static Map<String, WidgetBuilder> getAll() {
    return {
      RouteList.dashbaord: (context) => DashboardScreen(),
    };
  }
}
