// import 'dart:convert';

// import 'package:doan_didong/models/friend/friend_object.dart';
// import 'package:flutter/services.dart';

// class FriendProvider {
//   static Future<List<dynamic>> readJsonData() async {
//     var jsonText = await rootBundle.loadString('database/friend.json');
//     var data = json.decode(jsonText);
//     return data;
//   }

//   static Future<List<FriendObject>> getAllContacts() async {
//     List<FriendObject> lsResult = [];
//     List<dynamic> data = await readJsonData();
//     lsResult = data.map((e) => FriendObject.fromJson(e)).toList();
//     return lsResult;
//   }
// }
import 'dart:convert';
import 'package:http/http.dart' as http;

class Friends {
  // String baseUrl = "http://10.0.2.2:8000/api/members";
  String baseUrl = "https://fa63-2402-800-6346-cd38-5ca7-24d1-91ce-1a5f.ap.ngrok.io/api/auth/friends";
  Future<List> getAllFriends() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error("Server Error");
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
