import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/widgets/buttons/app_button.dart';

void main() {
  testWidgets('AppButton displays text and triggers callback', (WidgetTester tester) async {
    bool pressed = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: AppButton(
          text: 'Press Me',
          onPressed: () => pressed = true,
        ),
      ),
    ));

    expect(find.text('Press Me'), findsOneWidget);
    await tester.tap(find.byType(ElevatedButton));
    expect(pressed, true);
  });
}
