import 'package:flutter_test/flutter_test.dart';
import 'package:fionex_app/main.dart';

void main() {
  testWidgets('Fionex app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const FionexApp());

    expect(find.text('FIONEX'), findsOneWidget);
  });
}