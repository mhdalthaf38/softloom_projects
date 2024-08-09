import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:dummy_app/someskelton/homepage.dart';
import 'package:dummy_app/someskelton/login.dart';
import 'package:dummy_app/stack.dart';
import 'package:flutter/material.dart';

class Popupmenubutton extends StatefulWidget {
  const Popupmenubutton({super.key});

  @override
  State<Popupmenubutton> createState() => _PopupmenubuttonState();
}

class _PopupmenubuttonState extends State<Popupmenubutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popupbutton"),
        actions: [
          PopupMenuButton(onSelected: (value) {
            if (value == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginpage()));
            } else if (value == 1) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepage()));
            } else if (value == 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StackPage()));
            }
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(value: 0, child: Text("create group")),
              PopupMenuItem(value: 1, child: Text("setting")),
              PopupMenuItem(
                child: Text("contact"),
                value: 2,
              ),
            ];
          })
        ],
      ),
      body: CircularProfileAvatar(
        "https://www.shutterstock.com/image-photo/boat-tree-sunset-600nw-1770893537.jpg",
      ),
    );
  }
}
