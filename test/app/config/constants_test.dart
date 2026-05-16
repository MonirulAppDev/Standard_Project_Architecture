import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/app/config/constants.dart';

void main() {
  test('AppConstants should have correct app name', () {
    expect(AppConstants.appName, 'SPA V2');
  });
}
