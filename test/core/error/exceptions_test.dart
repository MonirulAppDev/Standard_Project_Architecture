import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/error/exceptions.dart';

void main() {
  group('Exceptions', () {
    test('ServerException should be an Exception', () {
      expect(ServerException(), isA<Exception>());
    });

    test('CacheException should be an Exception', () {
      expect(CacheException(), isA<Exception>());
    });
  });
}
