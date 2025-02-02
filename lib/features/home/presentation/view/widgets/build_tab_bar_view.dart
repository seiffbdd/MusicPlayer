import 'package:flutter/material.dart';
import 'package:music_player/features/home/presentation/view/widgets/custom_button.dart';
import 'package:music_player/features/home/presentation/view/widgets/items_number_row.dart';
import 'package:music_player/features/home/presentation/view/widgets/song_list_tile.dart';

class BuildTabBarView extends StatelessWidget {
  const BuildTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Column(
        children: [
          ItemsNumberRow(
            title: '108 songs',
            icon1: Icons.sort,
            icon2: Icons.select_all,
            icon1OnPressed: () {},
            icon2OnPressed: () {},
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                title: 'Play',
                icon: Icons.play_arrow,
                onPressed: () {},
              ),
              CustomButton(
                title: 'Shuffle',
                icon: Icons.play_arrow,
                onPressed: () {},
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return SongListTile(
                songName: 'Song $index',
                onTap: () {},
              );
            },
          ))
        ],
      ),
      Text('Playlist'),
      Text('Folders'),
    ]);
  }
}
