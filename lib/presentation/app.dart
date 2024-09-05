import 'package:flutter/material.dart';

import 'package:seed/common/constants/route_constants.dart';
import 'package:seed/presentation/routes.dart';
import 'package:seed/presentation/themes/theme_data.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo',
      debugShowCheckedModeBanner: false,
      theme: appTheme(context),
      routes: Routes.getAll(),
      initialRoute: RouteList.dashbaord,
    );
  }
}
