import 'package:doan_didong/screen/home/home.dart';
import 'package:doan_didong/screen/player/user.dart';
import 'package:doan_didong/screen/transaction/buybrains.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../friend/tabfriend.dart';
import '../transaction/tab_brains.dart';

class HomeTab extends StatefulWidget {
  @override
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

  List<Widget> lsScreen = [
    Home(),
    TabBrains(),
    TabFriend(),
    Userr(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: OntabSelected,
        selectedItemColor: Colors.blueAccent,
        backgroundColor: Color.fromARGB(232, 2, 14, 65),
        unselectedItemColor: Colors.white,
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
            icon: Icon(Icons.people),
            label: 'Bạn bè',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Người Dùng',
          ),
        ],
      ),
      body: lsScreen[_selectedIndex],
    );
  }
}
