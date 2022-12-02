import 'dart:convert';

import 'history_obj.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';

class HistoryProvider {
  static Future<List<dynamic>> readJsonData() async {
    var jsonText = await rootBundle.loadString('database/history.json');
    var data = json.decode(jsonText);
    return data['history'];
  }

  static Future<List<History>> getUserHistory(String id_user) async {
    List<History> lsResult = [];
    List<dynamic> data = await readJsonData();
    data.forEach((element) {
      History his = History.fromJson(element);
      if (his.player_id == id_user) {
        lsResult.add(his);
      }
    });
    return lsResult;
  }
}
