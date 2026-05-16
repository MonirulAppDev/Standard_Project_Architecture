import 'package:go_router/go_router.dart';
import 'package:spa_v2/app/router/route_names.dart';
import 'package:spa_v2/features/auth/presentation/pages/login_page.dart';
import 'package:spa_v2/features/auth/presentation/pages/register_page.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: RouteNames.initial,
    routes: [
      GoRoute(
        path: RouteNames.initial,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: RouteNames.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: RouteNames.register,
        builder: (context, state) => const RegisterPage(),
      ),
    ],
  );
}
