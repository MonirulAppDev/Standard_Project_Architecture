import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/features/chat/chat_page.dart';

void main() {
  testWidgets('ChatPage should display correct title and body', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ChatPage(),
    ));

    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Chat Page'), findsOneWidget);
  });
}
