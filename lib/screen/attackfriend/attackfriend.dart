import 'package:doan_didong/main.dart';
import 'package:doan_didong/models/attack/attackhistory/attack_provider.dart';
import 'package:doan_didong/models/attackhistory/historyattack_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../models/attack/attackhistory/attack_object.dart';
import '../../models/attackhistory/historyattack_object.dart';
import '../../models/friend/friend_object.dart';
import '../../models/friend/friend_provider.dart';

class AttackFriend extends StatefulWidget {
  const AttackFriend({super.key});

  @override
  State<AttackFriend> createState() => _AttackFriendState();
}

class _AttackFriendState extends State<AttackFriend> {
  List<AttackObject> lsFriends = [];
  void loadDanhSach() async {
    final data = await AttackProvider.getAllContacts();
    setState(() {});
    lsFriends = data;
  }

  @override
  void initState() {
    super.initState();
    loadDanhSach();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: lsFriends.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(151, 128, 138, 145),
                  border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                      style: BorderStyle.solid),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32.0))),
                            contentPadding: EdgeInsets.only(top: 10.0),
                            actions: <Widget>[
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 70),
                                          child: Text(
                                            'Thách đấu',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Icon(
                                              Icons.close,
                                              size: 20,
                                              color: Colors.white,
                                            ))
                                      ],
                                    ),
                                    Text(
                                      'Thời gian: ${lsFriends[index].time}',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 18),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Trang Thái: ',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '${lsFriends[index].status}',
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Bạn muốn hủy thách đầu này?',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.white)),
                                          child: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Ok',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                    tileColor: Color.fromARGB(151, 128, 138, 145),
                    leading: Column(
                      children: [
                        Text(
                          textAlign: TextAlign.left,
                          '${lsFriends[index].name}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 19,
                          ),
                        ),
                        Text(
                          '${lsFriends[index].point}',
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                    title: Image(
                        image: AssetImage('images/flash.png'),
                        height: 40,
                        width: 30),
                    trailing: Column(
                      children: [
                        Text(
                          textAlign: TextAlign.right,
                          '${lsFriends[index].name2}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 19,
                          ),
                        ),
                        Text(
                          '${lsFriends[index].point2}',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          contentPadding: EdgeInsets.only(top: 10.0),
          actions: <Widget>[
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text(
                          'Thách đấu',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.close,
                            size: 20,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Text(
                    'Bạn muốn hủy thách đầu này?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Ok',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
