import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/app/theme/spacing.dart';

void main() {
  group('AppSpacing', () {
    test('should have correct values', () {
      expect(AppSpacing.xs, 4.0);
      expect(AppSpacing.s, 8.0);
      expect(AppSpacing.m, 16.0);
      expect(AppSpacing.l, 24.0);
      expect(AppSpacing.xl, 32.0);
    });
  });
}
