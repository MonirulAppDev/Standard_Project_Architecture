import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/network/api_endpoints.dart';

void main() {
  group('ApiEndpoints', () {
    test('should have correct login endpoint', () {
      expect(ApiEndpoints.login, '/auth/login');
    });

    test('should have correct register endpoint', () {
      expect(ApiEndpoints.register, '/auth/register');
    });
  });
}
