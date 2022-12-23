import 'package:audioplayers/audioplayers.dart';
import 'package:doan_didong/models/ranker_object.dart';
import 'package:doan_didong/screen/attackfriend/attacktab.dart';
import 'package:doan_didong/screen/friend/tabfriend.dart';
import 'package:doan_didong/screen/home/home.dart';
import 'package:doan_didong/screen/player/user.dart';
import 'package:doan_didong/screen/transaction/buybrains.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/user.dart';
import '../transaction/tab_brains.dart';

class HomeTab extends StatefulWidget {
  @override
  User? user;

  HomeTab({Key? key, required this.user}) : super(key: key);
  State<StatefulWidget> createState() {
    return HomeTabState();
  }
}

class HomeTabState extends State<HomeTab> {
  int _selectedIndex = 0;
  void OntabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final player = AudioPlayer();

  @override
  void initState() {
    lsScreen = [
      Home(user: this.widget.user!),
      TabFriend(user: this.widget.user),
      Userr(user: this.widget.user),
    ];

    setcost();
  }

  void setcost() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('point', this.widget.user!.point);
  }

  List<Widget> lsScreen = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: OntabSelected,
        backgroundColor: Colors.blue,
        selectedItemColor: Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
        //backgroundColor: Color.fromARGB(232, 255, 0, 0),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'Bạn Bè',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Người Dùng'),
        ],
      ),
      body: lsScreen[_selectedIndex],
    );
  }
}
