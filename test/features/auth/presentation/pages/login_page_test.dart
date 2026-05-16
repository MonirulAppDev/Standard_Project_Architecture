import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/features/auth/presentation/pages/login_page.dart';
import 'package:spa_v2/features/auth/presentation/widgets/login_form.dart';

void main() {
  testWidgets('LoginPage should display LoginForm', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: LoginPage(),
    ));

    // Verify that LoginPage contains a LoginForm.
    expect(find.byType(LoginForm), findsOneWidget);
    
    // Verify specific elements inside LoginForm
    expect(find.text('Login'), findsNWidgets(2)); // One in AppBar title, one on Button
    expect(find.byType(TextField), findsNWidgets(2));
  });
}
