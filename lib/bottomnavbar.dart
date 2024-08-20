import 'package:dummy_app/grid.dart';
import 'package:dummy_app/someskelton/homepage.dart';
import 'package:dummy_app/someskelton/login.dart';
import 'package:dummy_app/someskelton/profilepage.dart';

import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  final pages = [Homepage(), Profilepage(), gridPage()];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
            height: 70,
            width: 70,
            child: ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.add,
                ))),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      body: [Homepage(), Profilepage(), gridPage()][_currentIndex],
      bottomNavigationBar:
          //  BottomNavigationBar(

          //     backgroundColor: Color.fromARGB(255, 134, 128, 128),
          //     onTap: (newindex) {
          //       setState(() {
          //         _currentIndex = newindex;
          //       });
          //     },
          //     currentIndex: _currentIndex,
          //     unselectedItemColor: Colors.black,
          //     selectedItemColor: Color.fromARGB(255, 48, 193, 109),
          //     items: [
          //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          //       BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          //     ]),
          BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => gridPage()));
                },
                icon: Icon(Icons.home)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profilepage()));
                },
                icon: Icon(Icons.notifications)),
          ],
        ),
      ),
    );
  }
}
