import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/utils/logger.dart';

void main() {
  test('AppLogger methods should not throw', () {
    expect(() => AppLogger.d('test debug'), returnsNormally);
    expect(() => AppLogger.e('test error'), returnsNormally);
  });
}
