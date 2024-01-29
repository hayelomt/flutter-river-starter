import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:tut/features/home/home.dart';
import 'package:tut/features/settings/settings.dart';

part 'router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: HomePage.routeName,
    routes: [
      GoRoute(
        path: HomePage.routeName,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: SettingsPage.routeName,
        builder: (context, state) => const SettingsPage(),
      ),
      GoRoute(
        path: ThemePage.routeName,
        builder: (context, state) => const ThemePage(),
      ),
    ],
  );
}
