import 'dart:convert';

import 'package:doan_didong/models/attack/attackhistory/attack_object.dart';
import 'package:doan_didong/models/attackhistory/historyattack_object.dart';
import 'package:doan_didong/models/friend/friend_object.dart';
import 'package:flutter/services.dart';

class AttackProvider {
  static Future<List<dynamic>> readJsonData() async {
    var jsonText = await rootBundle.loadString('database/attack.json');
    var data = json.decode(jsonText);
    return data;
  }

  static Future<List<AttackObject>> getAllContacts() async {
    List<AttackObject> lsResult = [];
    List<dynamic> data = await readJsonData();
    lsResult = data.map((e) => AttackObject.fromJson(e)).toList();
    return lsResult;
  }
}
