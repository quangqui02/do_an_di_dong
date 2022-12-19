import 'dart:convert';

import 'package:doan_didong/models/addfriend/FriendShip_object.dart';
import 'package:flutter/services.dart';

class FriendShipProvider {
  static Future<List<dynamic>> readJsonData() async {
    var jsonText = await rootBundle.loadString('database/friendship.json');
    var data = json.decode(jsonText);
    return data;
  }

  static Future<List<FriendShipObject>> getAllContacts() async {
    List<FriendShipObject> lsResult = [];
    List<dynamic> data = await readJsonData();
    lsResult = data.map((e) => FriendShipObject.fromJson(e)).toList();
    return lsResult;
  }
}
