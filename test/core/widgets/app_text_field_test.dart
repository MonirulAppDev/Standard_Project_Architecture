import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/widgets/textfields/app_text_field.dart';

void main() {
  testWidgets('AppTextField displays label and handles input', (WidgetTester tester) async {
    final controller = TextEditingController();
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: AppTextField(
          label: 'Email',
          controller: controller,
        ),
      ),
    ));

    expect(find.text('Email'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'test@test.com');
    expect(controller.text, 'test@test.com');
  });

  testWidgets('AppTextField should respect obscureText property', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: AppTextField(
          label: 'Password',
          obscureText: true,
        ),
      ),
    ));

    final textField = tester.widget<TextField>(find.byType(TextField));
    expect(textField.obscureText, true);
  });
}
