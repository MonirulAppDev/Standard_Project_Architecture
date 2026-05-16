import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/app/theme/app_text_styles.dart';

void main() {
  group('AppTextStyles', () {
    test('headline1 should have correct font size and weight', () {
      expect(AppTextStyles.headline1.fontSize, 24);
      expect(AppTextStyles.headline1.fontWeight, FontWeight.bold);
    });

    test('bodyText1 should have correct font size', () {
      expect(AppTextStyles.bodyText1.fontSize, 16);
    });
  });
}
