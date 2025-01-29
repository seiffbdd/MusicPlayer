import 'package:go_router/go_router.dart';
import 'package:music_player/features/home/presentation/view/home_view.dart';
import 'package:music_player/features/settings/presentation/view/settings_view.dart';

abstract class AppRouter {
  static const kSettingsView = '/settings';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsView(),
    )
  ]);
}
