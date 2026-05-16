import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/app/app.dart';
import 'package:spa_v2/features/auth/presentation/pages/login_page.dart';

void main() {
  testWidgets('App initial route smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the initial page is the LoginPage.
    expect(find.byType(LoginPage), findsOneWidget);

    // Verify that the 'Login' title is present (from AppScaffold title).
    expect(find.text('Login'), findsAtLeastNWidgets(1));
  });
}
