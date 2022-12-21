// import 'dart:convert';
// import 'package:doan_didong/models/ranker_object.dart';
// import 'package:http/http.dart' as http;
// import 'package:doan_didong/models/feild_question/feild_question_object.dart';

// class RankProvider {
//   static List<RankUser> parsePackage(String responseBody) {
//     final parsed = jsonDecode(responseBody);
//     final data = parsed["users"];
//     print(data);
//     data.cast<Map<String, dynamic>>();
//     return data.map<RankUser>((e) => RankUser.fromJson(e)).toList();
//   }

//   static Future<List<RankUser>> loadrank() async {
//     final response = await http.get(Uri.parse(
//         'https://4bd0-2001-ee0-555b-f200-4666-398b-d8bc-bf26.ap.ngrok.io/api/auth/ranker'));
//     // "http://10.0.2.2:8000/api/linhvuc"));
//     List<RankUser> LsResult = [];
//     List<dynamic> data = await json.decode(response.body);
//     LsResult = data.map((e) => RankUser.fromJson(e)).toList();
//     return LsResult;
//   }
// }
import 'dart:convert';
import 'package:http/http.dart' as http;

class RankServect {
  // String baseUrl = "http://10.0.2.2:8000/api/members";
  String baseUrl =
      "https://4bd0-2001-ee0-555b-f200-4666-398b-d8bc-bf26.ap.ngrok.io/api/auth/ranker";
  Future<List> getAllranker() async {
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
