import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/app/theme/app_colors.dart';

void main() {
  group('AppColors', () {
    test('should have defined primary color', () {
      expect(AppColors.primary, const Color(0xFF6200EE));
    });

    test('should have defined secondary color', () {
      expect(AppColors.secondary, const Color(0xFF03DAC6));
    });
  });
}
