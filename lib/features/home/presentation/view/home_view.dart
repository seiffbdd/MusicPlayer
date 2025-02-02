import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_player/core/utils/app_router.dart';
import 'package:music_player/core/utils/styles.dart';
import 'package:music_player/features/home/presentation/view/widgets/build_tab_bar.dart';
import 'package:music_player/features/home/presentation/view/widgets/build_tab_bar_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: Column(
            children: [
              BuildTabBar(tabs: _tabs),
              Expanded(
                child: BuildTabBarView(),
              )
            ],
          ),
        ),
      ),
    );
  }

  final List<Tab> _tabs = [
    Tab(
      child: Text('Playlist'),
    ),
    Tab(
      child: Text('Songs'),
    ),
    Tab(
      child: Text('Folders'),
    ),
  ];
}
