import 'package:flutter/material.dart';
import 'package:music_player/core/utils/screen_size.dart';
import 'package:music_player/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(title),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(ScreenSize.width(context) / 2.7, 30),
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          side: BorderSide(color: Colors.grey[800]!),
          iconColor: Colors.red,
          iconSize: 30.0,
          textStyle: Styles.textStyle18.copyWith(color: Colors.red),
          backgroundColor: Colors.transparent),
    );
  }
}
