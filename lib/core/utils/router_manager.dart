import 'package:go_router/go_router.dart';





abstract class AppRouter {
  static const articleDetailsViewPath = '/articleDetailsView';

  static final router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const HomeView(),
      // ),

    ],
  );
}
