import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:doan_didong/screen/field_screen/field.dart';
import 'package:doan_didong/screen/player/history.dart';
import 'package:doan_didong/screen/player/ranker.dart';
import 'package:doan_didong/screen/player/tab_rank.dart';
import 'package:doan_didong/screen/player/user.dart';
import 'package:doan_didong/screen/question_screen/level.dart';
import 'package:doan_didong/screen/question_screen/question.dart';
import 'package:doan_didong/screen/transaction/buybrains.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../models/ranker_object.dart';
import '../../models/user.dart';
import 'guide.dart';

class Home extends StatefulWidget {
  @override
  User user;

  Home({Key? key, required this.user}) : super(key: key);
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final player = AudioPlayer();
  @override
  void initState() {
    super.initState();
    music();
  }

  int seconds = 110;

  void music() {
    player.play(AssetSource('nhacnen.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                image: const DecorationImage(
                  image: AssetImage('images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('images/user.png'),
                            height: 50,
                            width: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              ('${this.widget.user.name}'),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
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
                                      ('${this.widget.user.point}'),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
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
                      )
                    ],
                  ),
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Container(
                      child: TextButton(
                        child: Text('CHƠI NGAY',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            textAlign: TextAlign.center),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FeildQuestion(
                                      user: this.widget.user,
                                    )),
                          );
                        },
                      ),
                      width: 250,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.yellow.shade800,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: Color.fromARGB(254, 255, 255, 255))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      child: TextButton(
                        child: Text('BẢNG XẾP HẠNG',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            textAlign: TextAlign.center),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Ranker()),
                          );
                        },
                      ),
                      width: 250,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.yellow.shade800,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      child: TextButton(
                        child: Text('LỊCH SỬ CHƠI',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            textAlign: TextAlign.center),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HistoryScreen(
                                      id_user: '1',
                                    )),
                          );
                        },
                      ),
                      width: 250,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.yellow.shade800,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.white)),
                    ),
                  ),
                ]),
              ],
            ),
          ]),
        ),
      ]),
    );
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
                      height: 67,
                      width: 67,
                      child: TextButton(
                        onPressed: () {
                          player.resume();
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.volume_up_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                              'Bật nhạc',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(139, 126, 114, 114),
                          // border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    Container(
                      height: 67,
                      width: 67,
                      child: TextButton(
                        onPressed: () {
                          //player.pause();
                          player.pause();
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.volume_off_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                              'Tắt nhạc',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(139, 126, 114, 114),
                          // border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    Container(
                      height: 67,
                      width: 67,
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
                              'Hướng dẫn',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(139, 126, 114, 114),
                          //border: Border.all(color: Colors.black),
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
}
