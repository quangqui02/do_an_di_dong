import 'dart:convert';

import 'package:doan_didong/models/attackhistory/historyattack_object.dart';
import 'package:doan_didong/models/friend/friend_object.dart';
import 'package:flutter/services.dart';

class AttackHistoryProvider {
  static Future<List<dynamic>> readJsonData() async {
    var jsonText = await rootBundle.loadString('database/historyattack.json');
    var data = json.decode(jsonText);
    return data;
  }

  static Future<List<AttacHistorykObject>> getAllContacts() async {
    List<AttacHistorykObject> lsResult = [];
    List<dynamic> data = await readJsonData();
    lsResult = data.map((e) => AttacHistorykObject.fromJson(e)).toList();
    return lsResult;
  }
}
