import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("success test example", (WidgetTester tester) async {
    expect(2 + 3, equals(5));
  });
}
