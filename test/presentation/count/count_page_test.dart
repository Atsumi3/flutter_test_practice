import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_practice/main.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> main() async {
  await loadAppFonts();
  testGoldens('CountPage / tap button', (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        widget: const MyApp(),
        name: 'first state',
      )
      ..addScenario(
        widget: const MyApp(),
        name: 'tap button',
        onCreate: (scenarioWidgetKey) async {
          final finder = find.descendant(
            of: find.byKey(scenarioWidgetKey),
            matching: find.byIcon(Icons.add),
          );
          await tester.tap(finder);
        },
      );
    await tester.pumpDeviceBuilder(builder);
    await screenMatchesGolden(tester, 'count_page');
  });
}
