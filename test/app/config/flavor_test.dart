import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/app/config/flavor.dart';

void main() {
  group('FlavorConfig', () {
    test('should set and get flavor correctly', () {
      FlavorConfig.flavor = Flavor.dev;
      expect(FlavorConfig.flavor, Flavor.dev);
      expect(FlavorConfig.name, 'dev');

      FlavorConfig.flavor = Flavor.prod;
      expect(FlavorConfig.flavor, Flavor.prod);
      expect(FlavorConfig.name, 'prod');
    });

    test('name should return empty string if flavor is null', () {
      FlavorConfig.flavor = null;
      expect(FlavorConfig.name, '');
    });
  });
}
