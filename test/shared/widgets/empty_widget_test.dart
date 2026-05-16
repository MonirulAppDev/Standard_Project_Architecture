import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/shared/widgets/empty_widget.dart';

void main() {
  testWidgets('EmptyWidget displays default message', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(body: EmptyWidget()),
    ));

    expect(find.text('No data available'), findsOneWidget);
  });

  testWidgets('EmptyWidget displays custom message', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(body: EmptyWidget(message: 'Nothing here')),
    ));

    expect(find.text('Nothing here'), findsOneWidget);
  });
}
