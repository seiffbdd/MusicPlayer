import 'package:flutter/material.dart';
import 'package:music_player/core/utils/styles.dart';
import 'package:music_player/core/utils/theme/theme.dart';
import 'package:music_player/core/utils/theme/theme_provider.dart';
import 'package:music_player/features/settings/presentation/view/widgets/custom_icon.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings', style: Styles.textStyle20),
      ),
      body: ListTile(
          leading: CustomIcon(icon: Icons.mode_standby),
          title: const Text('Dark mode', style: Styles.textStyle18),
          trailing: Switch(
            value: Provider.of<ThemeProvider>(context).themeData == darkMode,
            onChanged: (value) {
              Provider.of<ThemeProvider>(context, listen: false)
                  .toggleTheme(value: value);
            },
            activeColor: Colors.red,
          )),
    );
  }
}
