import 'package:dummy_app/http/requestModel.dart';
import 'package:dummy_app/http/service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class httpHomePage extends StatefulWidget {
  const httpHomePage({super.key});

  @override
  State<httpHomePage> createState() => _httpHomePageState();
}

class _httpHomePageState extends State<httpHomePage> {
  final Service http = Service();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Today News'),
          centerTitle: true,
        ),
        body: FutureBuilder<List<Db>>(
            future: http.getCode(),
            builder: (context, SnapShot) {
              if (SnapShot.hasData) {
                return ListView(
                  children: SnapShot.data!
                      .map((Dat) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              color: const Color.fromARGB(255, 184, 219, 247),
                              child: ListTile(
                                minTileHeight: 200,
                                title: Center(
                                    child: Text(
                                  Dat.title,
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                                subtitle: Text(Dat.body),
                              ),
                            ),
                          ))
                      .toList(),
                );
              } else {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: const Color.fromARGB(255, 207, 208, 209),
                        child: ListTile(
                          minTileHeight: 200,
                          title: Center(child: Text('')),
                          subtitle: Text(''),
                        ),
                      ),
                    );
                  },
                );
              }
            }));
  }
}
