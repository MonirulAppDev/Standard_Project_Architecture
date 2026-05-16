import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/shared/providers/common_provider.dart';

void main() {
  test('CommonProvider should be a ChangeNotifier', () {
    final provider = CommonProvider();
    expect(provider, isA<CommonProvider>());
  });
}
