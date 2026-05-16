import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/app/theme/app_theme.dart';
import 'package:spa_v2/app/theme/app_colors.dart';

void main() {
  group('AppTheme', () {
    test('lightTheme should have correct primary color', () {
      final theme = AppTheme.lightTheme;
      expect(theme.primaryColor, AppColors.primary);
      expect(theme.colorScheme.primary, AppColors.primary);
    });

    test('darkTheme should be dark', () {
      final theme = AppTheme.darkTheme;
      expect(theme.brightness, Brightness.dark);
    });
  });
}
