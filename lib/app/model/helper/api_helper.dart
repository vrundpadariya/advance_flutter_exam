import 'dart:convert';

import 'package:http/http.dart' as http;

import '../apimodel/model.dart';

class Apihelper {
  Apihelper._();

  static Apihelper api = Apihelper._();

  Future getdata() async {
    http.Response ans = await http.get(
      Uri.parse(
          "https://api.chucknorris.io/jokes/random?_gl=1*1rbh5gx*_ga*MTY5MjU1NzkxNS4xNzA1NjQ2MTI5*_ga_ZCYG64C7PL*MTcwNTY0NjEyOS4xLjEuMTcwNTY0NjEzNi4wLjAuMA.."),
    );
    if (ans.statusCode == 200) {
      var da = ans.body;
      Map decodegata = jsonDecode(da);
      Alljokes data = Alljokes.js(data: decodegata);
      return data;
    }
  }
}
