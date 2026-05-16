import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/features/admin/admin_page.dart';

void main() {
  testWidgets('AdminPage should display correct title and body', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: AdminPage(),
    ));

    expect(find.text('Admin'), findsOneWidget);
    expect(find.text('Admin Page'), findsOneWidget);
  });
}
