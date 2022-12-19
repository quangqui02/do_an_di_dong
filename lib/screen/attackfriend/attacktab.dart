import 'package:doan_didong/models/history/history_obj.dart';
import 'package:doan_didong/screen/attackfriend/attackfriend.dart';
import 'package:doan_didong/screen/attackfriend/attacksend.dart';
import 'package:doan_didong/screen/attackfriend/historyattack..dart';
import 'package:doan_didong/screen/friend/friend.dart';
import 'package:doan_didong/screen/friend/seachfriend.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../models/user.dart';
import '../friend/friendship.dart';

class AttackTab extends StatefulWidget {
  User? user;
  AttackTab({Key? key, required this.user}) : super(key: key);
  @override
  State<AttackTab> createState() => _AttackTabState();
}

class _AttackTabState extends State<AttackTab> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 2.5,
              tabs: <Tab>[
                Tab(
                  child: Text(
                    'Danh Sách ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Chiến Tích',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Lời Mời',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AttackFriend(),
              HistoryAttack(),
              AttackSend(),
            ],
          ),
        ),
      ),
    );
  }
}
