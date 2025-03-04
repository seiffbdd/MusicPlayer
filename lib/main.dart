import 'package:flutter/material.dart';
import 'package:music_player/core/utils/app_router.dart';
import 'package:music_player/core/utils/shared_preferences.dart';
import 'package:music_player/core/utils/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MusicPlayer(),
  ));
}

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
