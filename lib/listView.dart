import 'package:dummy_app/grid.dart';
import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  List<String> image = [
    'photo.jpg',
    'photo.jpg',
    'photo.jpg',
    'photo.jpg',
    'photo.jpg',
    'photo.jpg',
    'photo.jpg',
    'photo.jpg',
    'photo.jpg',
    'photo.jpg',
    'photo.jpg',
    'photo.jpg'
  ];
  List<String> email = [
    'mhdalhtafd232GMAIL.COM',
    'mhdalhta32GMAIL.COM',
    'alhtafd232GMAIL.COM',
    'mhdfd232GMAIL.COM',
    'd232GMAIL.COM',
    'mhdalhtafd232GMAIL.COM',
    'mhdalhtafd232GMAIL.COM',
    'mhdalhta32GMAIL.COM',
    'alhtafd232GMAIL.COM',
    'mhdfd232GMAIL.COM',
    'd232GMAIL.COM',
    'mhdalhtafd232GMAIL.COM'
  ];
  List<String> name = [
    'altthaf',
    'akshay',
    'seydali',
    'adithya',
    'meenakshi',
    'ali',
    'altthaf',
    'akshay',
    'seydali',
    'adithya',
    'meenakshi',
    'ali'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 52, 128, 51),
        title: Text(
          "Whats App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.photo_camera,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert, color: Colors.white),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("${name[index]}"),
                subtitle: Text("${email[index]}"),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/${image[index]}"),
                ),
                trailing: Text(" 1$index Am"),
              );
            },
            itemCount: image.length),
      ),
      floatingActionButton: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 52, 128, 51),
              borderRadius: BorderRadius.circular(10)),
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => gridPage()));
              },
              icon: Icon(
                Icons.chat_bubble,
                color: Colors.white,
              ))),
    );
  }
}
