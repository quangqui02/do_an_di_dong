import 'package:doan_didong/screen/attackfriend/attacktab.dart';
import 'package:doan_didong/screen/friend/tabfriend.dart';
import 'package:doan_didong/screen/home/home.dart';
import 'package:doan_didong/screen/player/user.dart';
import 'package:doan_didong/screen/transaction/buybrains.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  @override
  void initState() {
    lsScreen = [
      Home(user: this.widget.user),
      TabBrains(user: this.widget.user),
      TabFriend(user: this.widget.user),
      AttackTab(user: this.widget.user),
      Userr(user: this.widget.user),
    ];
  }

  List<Widget> lsScreen = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: OntabSelected,
        selectedItemColor: Color.fromARGB(255, 0, 60, 255),
        unselectedItemColor: Color.fromARGB(255, 0, 0, 0),
        //backgroundColor: Color.fromARGB(232, 255, 0, 0),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cửa hàng',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'Bạn Bè',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gavel_rounded),
            label: 'Thách Đấu',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Người Dùng'),
        ],
      ),
      body: lsScreen[_selectedIndex],
    );
  }
}
