import 'package:flutter/material.dart';
import 'package:music_player/core/utils/styles.dart';

class ItemsNumberRow extends StatelessWidget {
  const ItemsNumberRow({
    super.key,
    required this.title,
    required this.icon1,
    this.icon2,
    this.icon1OnPressed,
    this.icon2OnPressed,
  });
  final String title;
  final IconData icon1;
  final IconData? icon2;
  final void Function()? icon1OnPressed;
  final void Function()? icon2OnPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.textStyle18,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(icon1),
          iconSize: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(icon2),
          iconSize: 30,
        ),
      ],
    );
  }
}
