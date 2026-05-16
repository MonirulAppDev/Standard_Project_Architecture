import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/error/failures.dart';

void main() {
  group('Failures', () {
    test('ServerFailure should hold correct message', () {
      const failure = ServerFailure('Server error');
      expect(failure.message, 'Server error');
    });

    test('CacheFailure should hold correct message', () {
      const failure = CacheFailure('Cache error');
      expect(failure.message, 'Cache error');
    });
  });
}
