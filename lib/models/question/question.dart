import 'dart:convert';

import 'package:http/http.dart' as http;

var link =
    "https://9e74-2001-ee0-555b-f200-c1ca-f2eb-a337-3f0.ap.ngrok.io/api/questions";

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
