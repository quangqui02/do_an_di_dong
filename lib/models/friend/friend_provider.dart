import 'dart:convert';

import 'package:doan_didong/models/friend/friend_object.dart';
import 'package:flutter/services.dart';

class FriendProvider {
  static Future<List<dynamic>> readJsonData() async {
    var jsonText = await rootBundle.loadString('database/friend.json');
    var data = json.decode(jsonText);
    return data;
  }

  static Future<List<FriendObject>> getAllContacts() async {
    List<FriendObject> lsResult = [];
    List<dynamic> data = await readJsonData();
    lsResult = data.map((e) => FriendObject.fromJson(e)).toList();
    return lsResult;
  }
}
