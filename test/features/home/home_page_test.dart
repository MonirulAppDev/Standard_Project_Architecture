import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/features/home/home_page.dart';

void main() {
  testWidgets('HomePage should display correct title and body', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomePage(),
    ));

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Home Page'), findsOneWidget);
  });
}
