import 'package:flutter/material.dart';
import 'package:seed/common/utils/database_util.dart';
import 'package:seed/presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // InjectorConfig.setup();
  await DatabaseUtil.initDatabase();

  runApp(App());
}
