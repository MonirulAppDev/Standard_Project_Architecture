import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/features/streaming/streaming_page.dart';

void main() {
  testWidgets('StreamingPage should display correct title and body', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: StreamingPage(),
    ));

    expect(find.text('Streaming'), findsOneWidget);
    expect(find.text('Streaming Page'), findsOneWidget);
  });
}
