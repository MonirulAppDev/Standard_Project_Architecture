import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/features/auth/presentation/pages/register_page.dart';

void main() {
  testWidgets('RegisterPage should display placeholder text', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: RegisterPage(),
    ));

    expect(find.text('Register'), findsOneWidget); // AppBar title
    expect(find.text('Register Page'), findsOneWidget); // Body text
  });
}
