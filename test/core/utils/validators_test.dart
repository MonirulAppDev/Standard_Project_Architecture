import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/utils/validators.dart';

void main() {
  group('Validators', () {
    test('validateEmail returns error message for empty email', () {
      final result = Validators.validateEmail('');
      expect(result, 'Required');
    });

    test('validateEmail returns null for non-empty email', () {
      final result = Validators.validateEmail('test@example.com');
      expect(result, null);
    });
  });
}
