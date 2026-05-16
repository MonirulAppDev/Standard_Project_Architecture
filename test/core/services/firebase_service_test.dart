import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/services/firebase_service.dart';

void main() {
  test('FirebaseService init should complete', () async {
    final service = FirebaseService();
    expect(service.init(), completes);
  });
}
