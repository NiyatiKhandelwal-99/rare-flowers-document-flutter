import 'package:flutter_test/flutter_test.dart';
import 'package:rare_flowers_doc/another_file.dart';

void main() {
  testWidgets('My test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
  });
}
