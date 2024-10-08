import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:seed/presentation/journey/dashboard/dashboard_constants.dart';
import 'package:seed/presentation/journey/dashboard/dashboard_screen.dart';

import '../../../__setup__/navigation_mock.dart';
import '../../../__setup__/wrapper.dart';

void main() {
  late MockNavigatorObserver mockObserver;
  mockObserver = MockNavigatorObserver();

  setUp(() {
    mockObserver = MockNavigatorObserver();
  });
  testWidgets('render app dashboard screen ', (WidgetTester tester) async {
    // when
    await tester.pumpWidget(wrapWidget(DashboardScreen(), mockObserver));
    final widget =
        find.byKey(const ValueKey(DashboardConstants.elevatedButtonKey));

    // Then
    expect(find.text('TO-DO'), findsOneWidget);
    expect(widget, findsOneWidget);

    // When
    await tester.tap(widget);

    // Then
    // verify(mockObserver.didPush(captureAnyNamed('Route<dynamic>'), captureWidget));
  });
}
