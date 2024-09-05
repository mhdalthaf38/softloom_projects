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
                      .map((Dat) => Card(
                            child: ListTile(
                              title: Text(Dat.title),
                              subtitle: Text(Dat.body),
                            ),
                          ))
                      .toList(),
                );
              } else {
                return Text('there is no data');
              }
            }));
  }
}
