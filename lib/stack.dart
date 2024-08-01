import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("HotsApp"),
          bottom: TabBar(tabs: [Text("chat"), Text('status'), Text('group')]),
        ),
        body: TabBarView(children: [
          Container(
            height: 600,
            width: 500,
            color: Color.fromARGB(255, 255, 0, 195),
            child: Image.asset(
              'assets/images/WhatsApp Image 2024-07-23 at 11.46.07_77db900b.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 600,
            width: 500,
            color: Color.fromARGB(255, 255, 0, 195),
            child: Image.asset(
              'assets/images/WhatsApp Image 2024-07-23 at 11.44.17_fcab3b66.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 600,
            width: 500,
            color: Color.fromARGB(255, 255, 0, 195),
            child: Image.asset(
              'assets/images/WhatsApp Image 2024-07-23 at 11.58.47_a0f75447.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ]),
        // body: Stack(
        //   children: [
        //     Container(
        //       height: 500,
        //       width: 500,
        //       color: Colors.black,
        //       child: Image.asset(
        //         'assets/images/download (1).jpeg',
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //     Container(
        //       height: 400,
        //       width: 400,
        //       color: const Color.fromARGB(255, 217, 8, 8),
        //       child: Image.asset(
        //         'assets/images/love-birds_8.webp',
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //     Container(
        //       height: 300,
        //       width: 300,
        //       color: Color.fromARGB(255, 63, 181, 26),
        //       child: Image.asset(
        //         'assets/images/download.jpeg',
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //     Container(
        //       height: 600,
        //       width: 500,
        //       color: Color.fromARGB(255, 255, 0, 195),
        //       child: Image.asset(
        //         'assets/images/WhatsApp Image 2024-07-23 at 11.46.07_77db900b.jpg',
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
