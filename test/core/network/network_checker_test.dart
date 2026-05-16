import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/network/network_checker.dart';

void main() {
  late NetworkChecker networkChecker;

  setUp(() {
    networkChecker = NetworkChecker();
  });

  test('isConnected should return true (placeholder behavior)', () async {
    final result = await networkChecker.isConnected;
    expect(result, true);
  });
}
