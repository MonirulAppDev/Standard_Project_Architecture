import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/database/secure_storage.dart';

void main() {
  test('SecureStorage placeholder test', () {
    final storage = SecureStorage();
    expect(storage, isNotNull);
  });
}
