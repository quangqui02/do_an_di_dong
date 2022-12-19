import 'dart:convert';

import 'package:doan_didong/models/buybrain/buybrain_object.dart';
import 'package:flutter/services.dart';

class BuyBrainProvider {
  static Future<List<dynamic>> readJsonData() async {
    var jsonText = await rootBundle.loadString('database/buybrain.json');
    var data = json.decode(jsonText);
    return data;
  }

  static Future<List<BuyBrainObject>> getAllContacts() async {
    List<BuyBrainObject> lsResult = [];
    List<dynamic> data = await readJsonData();
    lsResult = data.map((e) => BuyBrainObject.fromJson(e)).toList();
    return lsResult;
  }
}
