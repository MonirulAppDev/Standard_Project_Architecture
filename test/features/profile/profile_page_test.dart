import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/features/profile/profile_page.dart';

void main() {
  testWidgets('ProfilePage should display correct title and body', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ProfilePage(),
    ));

    expect(find.text('Profile'), findsOneWidget);
    expect(find.text('Profile Page'), findsOneWidget);
  });
}
