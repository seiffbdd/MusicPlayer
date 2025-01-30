import 'package:flutter/material.dart';
import 'package:music_player/core/utils/shared_preferences.dart';
import 'package:music_player/core/utils/theme/theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = darkMode;

  ThemeData get themeData {
    if (prefs.getBool('isDarkMode') == true) {
      return darkMode;
    } else {
      return lightMode;
    }
  }

  void toggleDarkMode({bool? value}) {
    _themeData = _themeData == darkMode ? lightMode : darkMode;
    value = _themeData == darkMode;
    prefs.setBool("isDarkMode", _themeData == darkMode);
    notifyListeners();
  }
}
