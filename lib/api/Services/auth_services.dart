import 'dart:convert';

import 'package:doan_didong/api/Services/globals.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

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
    //print(response.body);
    return response;
  }

  static Future<User?> fetchUser(String email, String password) async {
    http.Response response = await login(email, password);
    User? result;
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body);
      final data = parsed["users"];
      //print(data);
      result = User.fromJson(data);
    }
    return result;
  }

  Future<User> getUser() async {
    SharedPreferences perfs = await SharedPreferences.getInstance();

    final response = await http.post(
      Uri.parse(baseURL + '/auth/updateuser'),
    );
    User? result;
    if (response.statusCode == 200) {
      User user = User.fromJson(jsonDecode(response.body)["data"]);
      perfs.setInt('point', user.point);
      final parsed = jsonDecode(response.body);
      final data = parsed["users"];
      result = User.fromJson(data);
      return user;
    }
    throw Exception("Fail to get user profile");
  }
}
