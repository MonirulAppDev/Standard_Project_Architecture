import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/widgets/app_scaffold.dart';

void main() {
  testWidgets('AppScaffold should display title and body', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: AppScaffold(
        title: 'Test Title',
        body: Text('Test Body'),
      ),
    ));

    expect(find.text('Test Title'), findsOneWidget);
    expect(find.text('Test Body'), findsOneWidget);
  });

  testWidgets('AppScaffold should not display AppBar if title is null', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: AppScaffold(
        body: Text('Test Body'),
      ),
    ));

    expect(find.byType(AppBar), findsNothing);
    expect(find.text('Test Body'), findsOneWidget);
  });
}
