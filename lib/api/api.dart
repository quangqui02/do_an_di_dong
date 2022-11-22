import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class APi {
  final String _url = "localhost:8000/api/";
  //POST
  // register(Map<String, String> data) async {
  //   final response = await http.post(
  //     Uri.parse(_url + "register"),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(data),
  //   );
  //   return response;
  // }
}
