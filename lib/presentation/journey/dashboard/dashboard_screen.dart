import 'package:flutter/material.dart';
import 'package:seed/common/constants/route_constants.dart';
import 'package:seed/presentation/journey/dashboard/dashboard_constants.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('TO-DO'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.headline3,
              ),
              ElevatedButton(
                key: const ValueKey(DashboardConstants.elevatedButtonKey),
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteList.todoList);
                },
                child: Text(
                  'Go',
                  style: Theme.of(context).textTheme.button,
                ),
              )
            ],
          ),
        ),
      );
}
