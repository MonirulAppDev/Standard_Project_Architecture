import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/utils/formatters.dart';

void main() {
  test('AppFormatters placeholder test', () {
    final formatters = AppFormatters();
    expect(formatters, isNotNull);
  });
}
