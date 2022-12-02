import 'package:doan_didong/screen/home/hometab.dart';
import 'package:doan_didong/screen/player/ranker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabRank extends StatefulWidget {
  const TabRank({super.key});

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
            backgroundColor: Color.fromARGB(255, 33, 30, 241),
            title: Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeTab()),
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
                    'Bang Xep Hang',
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
                    'Tat Ca',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                Tab(
                  child: Text(
                    'Cap Do',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                Tab(
                  child: Text(
                    'Linh Vuc',
                    style: TextStyle(
                        fontSize: 18,
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
