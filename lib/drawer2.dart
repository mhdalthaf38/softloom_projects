import 'package:flutter/material.dart';

class Drawer2 extends StatefulWidget {
  const Drawer2({super.key});

  @override
  State<Drawer2> createState() => _Drawer2State();
}

class _Drawer2State extends State<Drawer2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/8324.png',
                          ))),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/WhatsApp Image 2024-07-23 at 11.58.47_a0f75447.jpg'),
                  ),
                  accountName: Text('akshay baiju'),
                  accountEmail: Text('akshay1232gmail.com'),
                ),
                ListTile(
                  leading: Icon(Icons.person_rounded),
                  title: Text("Profile"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.info_outline_rounded),
                  title: Text("About App"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 23,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    Icons.logout,
                    size: 25,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
