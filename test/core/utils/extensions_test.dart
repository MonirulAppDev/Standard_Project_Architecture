import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/utils/extensions.dart';

void main() {
  group('StringExtension', () {
    test('capitalize should uppercase the first letter', () {
      expect('hello'.capitalize(), 'Hello');
      expect('world'.capitalize(), 'World');
    });
  });
}
