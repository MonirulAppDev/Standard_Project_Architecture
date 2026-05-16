import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/app/router/app_router.dart';
import 'package:spa_v2/app/router/route_names.dart';

void main() {
  group('AppRouter', () {
    test('should have the correct initial location', () {
      expect(AppRouter.router.routeInformationProvider.value.uri.path, RouteNames.initial);
    });

    test('should contain defined routes', () {
      final routes = AppRouter.router.configuration.routes;
      final paths = routes.map((e) => (e as dynamic).path).toList();
      
      expect(paths, contains(RouteNames.initial));
      expect(paths, contains(RouteNames.login));
      expect(paths, contains(RouteNames.register));
    });
  });
}
