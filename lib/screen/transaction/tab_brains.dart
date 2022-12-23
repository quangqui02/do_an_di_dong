import 'package:doan_didong/screen/home/guide.dart';
import 'package:doan_didong/screen/transaction/transaction_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/user.dart';
import 'buybrains.dart';

class TabBrains extends StatefulWidget {
  TabBrains({Key? key, required this.user}) : super(key: key);
  User? user;
  @override
  State<TabBrains> createState() => _TabBrainsState();
}

class _TabBrainsState extends State<TabBrains> {
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
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TabBrains(
                                            user: this.widget.user,
                                          )),
                                );
                              },
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage('images/back.png'),
                              )),
                        ],
                      ),
                    ),
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
                            ('${this.widget.user!.point}'),
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
              BuyBrains(
                user: this.widget.user,
              ),
              TransactionHistory(),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  bool val1 = false;
  bool val2 = true;
  void setState(Null Function() param0) {}
  onChangFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangFunction2(bool newValue2) {
    setState(() {
      val2 = newValue2;
    });
  }

  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Color.fromARGB(255, 128, 138, 145),
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
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      'CÀI ĐẶT',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
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
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Guide()),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(139, 126, 114, 114),
                              //border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.book_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Hướng Dẫn',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 27,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              //border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.chevron_right,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      customSwitch(Icons.music_note_rounded, 'Nhạc nền', val1,
                          onChangFunction1),
                      SizedBox(
                        height: 5,
                      ),
                      customSwitch(Icons.volume_down_alt, 'Âm thanh', val2,
                          onChangFunction2),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      );
    },
  );
}

Widget customSwitch(
    IconData iconData, String text, bool val, Function onChangMethod) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 20, bottom: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Color.fromARGB(139, 126, 114, 114),
              //border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(30)),
          child: Icon(
            iconData,
            size: 30,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(),
        CupertinoSwitch(
          trackColor: Colors.grey,
          activeColor: Colors.yellow.shade800,
          value: val,
          onChanged: (newValue) {
            onChangMethod(newValue);
          },
        )
      ],
    ),
  );
}
