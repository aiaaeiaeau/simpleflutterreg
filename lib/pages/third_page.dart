import 'package:example_three/pages/bottom_nav.dart';
import 'package:example_three/pages/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  ThirdPage({required this.value, Key? key});
  late String value;
  Widget build(BuildContext context) => CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Color(0xFFfafafa), // reddish
        inactiveColor: Color(0xFFbbbfc2), // light green
        activeColor: Color(0xFF8d42d7),
        iconSize: 23, //dark green

        items: const [
          BottomNavigationBarItem(
            label: 'Dashboard',
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
              label: 'Balance', icon: Icon(CupertinoIcons.money_dollar_circle)),
          BottomNavigationBarItem(
              label: 'Profile', icon: Icon(CupertinoIcons.person)),
          BottomNavigationBarItem(
              label: 'Settings', icon: Icon(CupertinoIcons.gear_alt)),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return Dashboard(value: 'welcome back');
          case 1:
            return const NewPage(title: 'Tab 2');
          case 2:
            return const NewPage(title: 'Tab 3');
          default:
            return const NewPage(title: 'Tab 4');
        }
      });
}
