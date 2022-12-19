import 'dart:convert';

import 'package:http/http.dart' as http;

var link = "https://d9b6-118-71-246-65.ap.ngrok.io/api/questions";

// nếu muốn load câu hoi api thì sử dụng cái này và comment cái var link trên
// var link =
//     "http://127.0.0.1:8000/api/questions";

getQuiz() async {
  var res = await http.post(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    return data;
  }
}
