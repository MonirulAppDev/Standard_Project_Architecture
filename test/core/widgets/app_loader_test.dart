import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/widgets/loaders/app_loader.dart';

void main() {
  testWidgets('AppLoader displays CircularProgressIndicator', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: AppLoader(),
      ),
    ));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
