import 'package:flutter/material.dart';
import 'package:music_player/core/utils/styles.dart';

class BuildTabBar extends StatelessWidget {
  const BuildTabBar({
    super.key,
    required List<Tab> tabs,
  }) : _tabs = tabs;

  final List<Tab> _tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
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
    );
  }
}
