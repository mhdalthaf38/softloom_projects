import 'dart:convert';

import 'package:dummy_app/http/requestModel.dart';
import 'package:http/http.dart';

class Service {
  final String url = 'https://jsonplaceholder.typicode.com/posts';
  Future<List<Db>> getCode() async {
    final res = await get(Uri.parse(url));
    if (res.statusCode == 200) {
      List BodyData = jsonDecode(res.body);
      List<Db> model = BodyData.map((item) => Db.fromJson(item)).toList();
      return model;
    } else {
      throw 'some error occur';
    }
  }
}
