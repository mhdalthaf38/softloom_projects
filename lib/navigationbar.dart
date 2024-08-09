import 'package:dummy_app/grid.dart';
import 'package:dummy_app/someskelton/login.dart';
import 'package:dummy_app/someskelton/registerPage.dart';

import 'package:flutter/material.dart';

class Navifationbar extends StatefulWidget {
  const Navifationbar({super.key});

  @override
  State<Navifationbar> createState() => _NavifationbarState();
}

class _NavifationbarState extends State<Navifationbar> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        gridPage(),
        loginpage(),
        Registerpage(),
        gridPage()
      ][_currentindex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            _currentindex = index;
          });
        },
        selectedIndex: _currentindex,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.home), label: 'home')
        ],
      ),
    );
  }
}
