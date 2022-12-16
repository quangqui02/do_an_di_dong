import 'dart:convert';

import 'package:http/http.dart' as http;

var link =
    "https://b1fc-2001-ee0-555b-f200-304d-e196-252-b4a7.ap.ngrok.io/api/questions";

// nếu muốn load câu hoi api thì sử dụng cái này và comment cái var link trên
// var link =
//     "http://127.0.0.1:8000/api/questions";

getQuiz() async {
  var res = await http.post(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    // print("data is loaded");
    return data;
  }
}
