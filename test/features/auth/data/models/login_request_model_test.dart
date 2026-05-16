import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/features/auth/data/models/login_request_model.dart';

void main() {
  final tLoginRequestModel = LoginRequestModel(
    email: 'test@example.com',
    password: 'password123',
  );

  group('toJson', () {
    test('should return a JSON map containing the proper data', () {
      final result = tLoginRequestModel.toJson();
      final expectedMap = {
        'email': 'test@example.com',
        'password': 'password123',
      };
      expect(result, expectedMap);
    });
  });
}
