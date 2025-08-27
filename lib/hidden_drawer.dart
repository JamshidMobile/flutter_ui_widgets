import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/pages/home_page.dart';
import 'package:flutter_ui_widgets/pages/profile_page.dart';
import 'package:flutter_ui_widgets/pages/settings_page.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class MyHiddenDrawer extends StatefulWidget {
  const MyHiddenDrawer({super.key});

  @override
  State<MyHiddenDrawer> createState() => _MyHiddenDrawerState();
}

class _MyHiddenDrawerState extends State<MyHiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Home",
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
          colorLineSelected: Colors.indigo,
      ),
        MyHomePage(),
      ),

      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Profile",
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
          colorLineSelected: Colors.indigo,
        ),
        MyProfilePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Settings",
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
          colorLineSelected: Colors.indigo,
        ),
        MySettingsPage(),
      ),

    ];
  }
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _pages,
        initPositionSelected: 0,
        slidePercent: 60,
        backgroundColorMenu: Colors.indigo.shade200
    );
  }
}
