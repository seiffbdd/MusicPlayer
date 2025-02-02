import 'package:flutter/material.dart';
import 'package:music_player/core/utils/styles.dart';
import 'package:music_player/features/settings/presentation/view/widgets/custom_icon.dart';

class SongListTile extends StatelessWidget {
  const SongListTile(
      {super.key,
      required this.songName,
      this.artistName = 'Unknown',
      this.onTap});
  final String songName;
  final String artistName;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomIcon(
        icon: Icons.music_note,
        color: Colors.grey[500]!,
      ),
      title: Text(
        songName,
        style: Styles.textStyle18,
      ),
      subtitle: Text(
        '<$artistName>',
        style: Styles.textStyle12
            .copyWith(color: Colors.white.withValues(alpha: 100)),
      ),
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
      onTap: onTap,
    );
  }
}
