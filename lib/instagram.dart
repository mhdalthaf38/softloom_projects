import 'package:dummy_app/homepage.dart';
import 'package:dummy_app/listView.dart';
import 'package:dummy_app/profilepage.dart';
import 'package:dummy_app/whatsappChat.dart';
import 'package:flutter/material.dart';

class InstaMainPage extends StatefulWidget {
  const InstaMainPage({super.key});

  @override
  State<InstaMainPage> createState() => _InstaMainPageState();
}

class _InstaMainPageState extends State<InstaMainPage> {
  final pages = [Homepage(), ChatScreen(), ListviewPage(), Profilepage()];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 135, 57, 57),
          unselectedItemColor: Colors.black,
          onTap: (newindex) {
            setState(() {
              currentindex = newindex;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline_outlined,
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                label: "")
          ]),
    );
  }
}
