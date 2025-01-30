import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_player/core/utils/app_router.dart';
import 'package:music_player/core/utils/styles.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: Column(
            children: [
              TabBar(
                padding: EdgeInsets.only(bottom: 12.0),
                indicatorPadding: EdgeInsets.symmetric(horizontal: -12.0),
                dividerColor: Colors.transparent,
                isScrollable: true,
                indicator: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                labelStyle: Styles.textStyle18.copyWith(
                  color: Colors.white,
                ),
                unselectedLabelStyle: Styles.textStyle18,
                tabs: _tabs,
              ),
              Expanded(
                child: TabBarView(children: [
                  Text('Playlist'),
                  Text('Songs'),
                  Text('Folders'),
                  Text('Playlist'),
                  Text('Playlist'),
                  Text('Playlist'),
                  Text('Playlist'),
                  Text('Playlist'),
                  Text('Playlist'),
                ]),
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
    Tab(
      child: Text('Playlist'),
    ),
    Tab(
      child: Text('Songs'),
    ),
    Tab(
      child: Text('Folders'),
    ),
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
