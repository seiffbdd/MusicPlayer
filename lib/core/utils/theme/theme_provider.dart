import 'package:flutter/material.dart';
import 'package:music_player/core/utils/theme/theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = darkMode;

  ThemeData get themeData => _themeData;

  void toggleTheme({bool? value}) {
    _themeData = _themeData == darkMode ? lightMode : darkMode;
    value = _themeData == darkMode;
    notifyListeners();
  }
}
