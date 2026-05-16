import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/error/error_handler.dart';

void main() {
  test('ErrorHandler placeholder test', () {
    final handler = ErrorHandler();
    expect(handler, isNotNull);
  });
}
