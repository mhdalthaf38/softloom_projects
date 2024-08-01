import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> ContactName = [
    'Adithya',
    'saidalikka',
    'akshay',
    'althaf',
    'jhonewick',
    'ali',
    'monsa',
    'jhon',
    'ali baba',
    'akshay',
    'althaf',
    'jhonewick',
    'ali',
  ];
  List<String> image = [
    'love-birds_8.webp',
    'download.jpeg',
    'download (1).jpeg',
    'download (1).jpeg',
    'download.jpeg',
    'download (1).jpeg',
    'love-birds_8.webp',
    'download.jpeg',
    'download (1).jpeg',
    'download (1).jpeg',
    'download.jpeg',
    'download (1).jpeg',
    'love-birds_8.webp',
  ];
  List<String> ContactNumber = [
    '989898989',
    '325253525',
    '525356456',
    '894529875',
    '827547575',
    '387589758',
    '272582757',
    '838889675',
    '467357683',
    '525356456',
    '894529875',
    '827547575',
    '387589758',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Select contact",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '${ContactNumber.length} contacts',
                style: const TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ),
          const Icon(Icons.more_vert)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("New Group"),
                leading: CircleAvatar(
                  radius: 23,
                  backgroundColor: Color.fromARGB(255, 52, 128, 51),
                  child: Icon(Icons.group_add, color: Colors.white),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("New contact"),
                leading: CircleAvatar(
                  radius: 23,
                  backgroundColor: Color.fromARGB(255, 52, 128, 51),
                  child: Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("New contact"),
                leading: CircleAvatar(
                  radius: 23,
                  backgroundColor: Color.fromARGB(255, 52, 128, 51),
                  child: Icon(
                    Icons.groups,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Contacts on WhatsApp'),
            ),
            SizedBox(
              height: 600,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: ContactNumber.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text("${ContactName[index]}"),
                        subtitle: Text("${ContactNumber[index]}"),
                        leading: CircleAvatar(
                          radius: 23,
                          backgroundImage:
                              AssetImage('assets/images/${image[index]}'),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
