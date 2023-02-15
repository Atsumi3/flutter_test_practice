import 'package:flutter_driver/flutter_driver.dart';
import 'package:integration_test/integration_test_driver_extended.dart';

Future<void> main() async {
  final FlutterDriver driver = await FlutterDriver.connect();
  await integrationDriver(
    driver: driver,
    onScreenshot: (
        String screenshotName,
        List<int> screenshotBytes, [
          Map<String, Object?>? args,
        ]) async {
      if (args != null) {
        final String? someArgumentValue = args['someArgumentKey'] as String?;
        return someArgumentValue != null;
      }
      return true;
    },
  );
}
