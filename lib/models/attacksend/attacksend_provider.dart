import 'dart:convert';

import 'package:doan_didong/models/attackhistory/historyattack_object.dart';
import 'package:doan_didong/models/friend/friend_object.dart';
import 'package:flutter/services.dart';

import 'attacksend_object.dart';

class AttackSendProvider {
  static Future<List<dynamic>> readJsonData() async {
    var jsonText = await rootBundle.loadString('database/attacksend.json');
    var data = json.decode(jsonText);
    return data;
  }

  static Future<List<AttackSendObject>> getAllContacts() async {
    List<AttackSendObject> lsResult = [];
    List<dynamic> data = await readJsonData();
    lsResult = data.map((e) => AttackSendObject.fromJson(e)).toList();
    return lsResult;
  }
}
