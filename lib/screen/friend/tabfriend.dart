import 'package:doan_didong/screen/friend/friend.dart';
import 'package:doan_didong/screen/friend/seachfriend.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../models/user.dart';
import 'friendship.dart';

class TabFriend extends StatefulWidget {
  TabFriend({Key? key, required this.user}) : super(key: key);
  User? user;
  @override
  State<TabFriend> createState() => _TabFriendState();
}

class _TabFriendState extends State<TabFriend> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            // leading: Image(
            //   image: AssetImage('images/back.png'),
            // ),
            // leadingWidth: 25,
            // title: Text(
            //   'Xã hội',
            //   style: TextStyle(
            //     fontSize: 23,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            //centerTitle: true,
            title: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 2.5,
              tabs: <Tab>[
                Tab(
                  child: Text(
                    'Bạn bè',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Yêu cầu',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Tìm kiếm',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Friend(),
              FriendShip(),
              SeachFriend(),
            ],
          ),
        ),
      ),
    );
  }
}
