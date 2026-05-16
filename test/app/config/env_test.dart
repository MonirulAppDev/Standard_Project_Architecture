import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/app/config/env.dart';

void main() {
  test('Env should have baseUrl (even if empty in test environment)', () {
    // Note: String.fromEnvironment often returns empty in tests unless passed via flags
    expect(Env.baseUrl, isA<String>());
  });
}
