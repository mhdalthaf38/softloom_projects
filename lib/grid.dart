import 'package:flutter/material.dart';

class gridPage extends StatefulWidget {
  const gridPage({super.key});

  @override
  State<gridPage> createState() => _gridPageState();
}

class _gridPageState extends State<gridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grid ",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GridView.count(
        childAspectRatio: 0.5,
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: [
          Container(
            child: Image.network(
              'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
