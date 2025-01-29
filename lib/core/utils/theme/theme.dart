import 'package:flutter/material.dart';
import 'package:music_player/core/utils/constants.dart';

ThemeData lightMode = ThemeData(
  colorScheme: const ColorScheme.light().copyWith(
    surface: kLightModeBackgroundColor,
    brightness: Brightness.light,
  ),
);

ThemeData darkMode = ThemeData(
  colorScheme: const ColorScheme.dark().copyWith(
    surface: kDarkModeBackgroundColor,
    brightness: Brightness.dark,
  ),
);
