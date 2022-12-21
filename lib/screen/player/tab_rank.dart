import 'package:doan_didong/screen/home/hometab.dart';
import 'package:doan_didong/screen/player/ranker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/user.dart';

class TabRank extends StatefulWidget {
  TabRank({Key? key, required this.user}) : super(key: key);
  User? user;
  @override
  State<TabRank> createState() => _TabLoginState();
}

class _TabLoginState extends State<TabRank> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeTab(
                                  user: this.widget.user,
                                )),
                      );
                    },
                    child: Image(
                      width: 30,
                      height: 30,
                      image: AssetImage('images/back.png'),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: size.height * 0.05),
                  child: Text(
                    'Bảng xếp hạng',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            centerTitle: true,
            bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 2.5,
              tabs: <Tab>[
                Tab(
                  child: Text(
                    'Tất cả',
                    style: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                Tab(
                  child: Text(
                    'Thời gian',
                    style: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                Tab(
                  child: Text(
                    'Lĩnh vực',
                    style: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Ranker(),
              Ranker(),
              Ranker(),
            ],
          ),
        ),
      ),
    );
  }
}
