import 'package:flutter/cupertino.dart';

class History {
  String id;
  String player_id;
  String time_start;
  String totalscore;

  String status;
  History({
    required this.id,
    required this.player_id,
    required this.time_start,
    required this.totalscore,
    required this.status,
  });
  History.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        player_id = json['player_id'],
        time_start = json['time_start'],
        totalscore = json['totalscore'],
        status = json['status'];

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'player_id': player_id,
      'time_start': time_start,
      'totalscore': totalscore,
      'status': status,
    };
  }
}
