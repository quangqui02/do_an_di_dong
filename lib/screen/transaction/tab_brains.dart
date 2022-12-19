import 'package:doan_didong/screen/home/guide.dart';
import 'package:doan_didong/screen/transaction/transaction_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'buybrains.dart';

class TabBrains extends StatefulWidget {
  const TabBrains({super.key});

  @override
  State<TabBrains> createState() => _TabBrainsState();
}

class _TabBrainsState extends State<TabBrains> {
  int pointuser = 500;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 10, left: 10, top: 2, bottom: 2),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Image(
                              image: AssetImage('images/brain.png'),
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Text(
                            pointuser.toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ),
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.yellow.shade800,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.white)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: IconButton(
                    onPressed: () => _dialogBuilder(context),
                    icon: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                )
              ],
            ),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 2.5,
              tabs: <Tab>[
                Tab(
                  child: Text(
                    'Nạp điểm',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "BarlowBold",
                        color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Lịch sử giao dịch',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "BarlowBold",
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              BuyBrains(),
              TransactionHistory(),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        contentPadding: EdgeInsets.only(top: 10.0),
        actions: <Widget>[
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Text(
                      'Cài Đặt',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.close,
                        size: 40,
                        color: Colors.white,
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.music_note,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            'Âm Nhạc',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(139, 126, 114, 114),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.volume_down,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            'Âm Lượng',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(139, 126, 114, 114),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Guide()),
                        );
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.book_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            'Hướng Dẫn',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(139, 126, 114, 114),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    },
  );
}
