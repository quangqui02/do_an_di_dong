import 'dart:convert';

import 'package:doan_didong/api/Services/globals.dart';

import 'package:http/http.dart' as http;

import '../../models/user.dart';

class AuthServices {
  static Future<http.Response> register(
      String name, String email, String password) async {
    Map data = {
      "name": name,
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + '/auth/register');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> login(String email, String password) async {
    Map data = {
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + '/auth/login');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }

  static Future<User?> fetchUser(String email, String password) async {
    http.Response response = await login(email, password);
    User? result;
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body);
      final data = parsed["users"];
      print(data);
      result = User.fromJson(data);
    }
    return result;
  }
}
