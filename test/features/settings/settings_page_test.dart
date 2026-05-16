import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/features/settings/settings_page.dart';

void main() {
  testWidgets('SettingsPage should display correct title and body', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: SettingsPage(),
    ));

    expect(find.text('Settings'), findsOneWidget);
    expect(find.text('Settings Page'), findsOneWidget);
  });
}
