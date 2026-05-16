import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/features/auth/data/models/token_model.dart';

void main() {
  group('TokenModel', () {
    test('fromJson should return a valid model', () {
      final json = {
        'access_token': 'access',
        'refresh_token': 'refresh',
      };
      final result = TokenModel.fromJson(json);
      expect(result.accessToken, 'access');
      expect(result.refreshToken, 'refresh');
    });
  });
}
