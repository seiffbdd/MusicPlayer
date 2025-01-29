import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_player/core/utils/app_router.dart';
import 'package:music_player/core/utils/styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MusicPlayer',
          style: Styles.textStyle30,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            iconSize: 30,
          ),
          IconButton(
            icon: const Icon(Icons.video_call),
            onPressed: () {},
            iconSize: 30,
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSettingsView);
            },
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
