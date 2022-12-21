import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:doan_didong/models/feild_question/feild_question_object.dart';

class FeildProvider {
  static List<FeildQuestionObjecj> parsePackage(String responseBody) {
    final parsed = jsonDecode(responseBody);
    final data = parsed["field_questions"];
    print(data);
    data.cast<Map<String, dynamic>>();
    return data
        .map<FeildQuestionObjecj>((e) => FeildQuestionObjecj.fromJson(e))
        .toList();
  }

  static Future<List<FeildQuestionObjecj>> fetchPackage() async {
    final response = await http.get(Uri.parse(
        'https://4bd0-2001-ee0-555b-f200-4666-398b-d8bc-bf26.ap.ngrok.io/api/linhvuc'));
    // "http://10.0.2.2:8000/api/linhvuc"));
    print(response);
    return parsePackage(response.body);
  }
}
