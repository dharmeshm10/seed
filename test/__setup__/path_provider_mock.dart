import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void setupPathProviderMock(String baseLocation) {
  const MethodChannel('plugins.flutter.io/path_provider')
      .setMockMethodCallHandler(
    (MethodCall methodCall) async {
      return Future<String>.value(baseLocation);
    },
  );
}
