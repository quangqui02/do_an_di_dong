import 'dart:convert';

import 'package:http/http.dart' as http;

var link =
    "https://fa63-2402-800-6346-cd38-5ca7-24d1-91ce-1a5f.ap.ngrok.io/api/questions";
// "http://10.0.2.2:8000/api/questions";
// nếu muốn load câu hoi api thì sử dụng cái này và comment cái var link trên
// var link =
//     "http://127.0.0.1:8000/api/questions";

getQuiz(int id) async {
  var res = await http.get(Uri.parse(link + "/$id"));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    return data;
  }
  return res;
}
