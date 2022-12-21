import 'package:doan_didong/main.dart';
import 'package:doan_didong/models/attackhistory/historyattack_object.dart';
import 'package:doan_didong/models/attackhistory/historyattack_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../models/friend/friend_object.dart';
import '../../models/friend/friend_provider.dart';

class HistoryAttack extends StatefulWidget {
  const HistoryAttack({super.key});

  @override
  State<HistoryAttack> createState() => _HistoryAttackState();
}

class _HistoryAttackState extends State<HistoryAttack> {
  List<AttacHistorykObject> lsFriends = [];
  void loadDanhSach() async {
    final data = await AttackHistoryProvider.getAllContacts();
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
                            backgroundColor: Color.fromARGB(210, 187, 222, 251),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
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
                                              const EdgeInsets.only(left: 100),
                                          child: Text(
                                            'CHI TIẾT',
                                            style: TextStyle(
                                                color: Colors.blue[800],
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
                                              size: 25,
                                              color: Colors.white,
                                            ))
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 120,
                                          child: Column(
                                            children: [
                                              Text(
                                                '${this.lsFriends[index].name}',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                width: 80,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    color: Colors.purple,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width: 2)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text(
                                                          '${this.lsFriends[index].point}',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 25,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          '|',
                                          style: TextStyle(fontSize: 50),
                                        ),
                                        Container(
                                          width: 120,
                                          child: Column(
                                            children: [
                                              Text(
                                                '${this.lsFriends[index].name2}',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                width: 80,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    color: Colors.purple,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width: 2)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      '${this.lsFriends[index].point2}',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                    tileColor: Color.fromARGB(151, 128, 138, 145),
                    leading: Container(
                      width: 120,
                      child: Column(
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
                          Container(
                            width: 60,
                            height: 30,
                            margin: EdgeInsets.only(top: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.red),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Lose',
                                  textAlign: TextAlign.center,
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
                        ],
                      ),
                    ),
                    title: Image(
                        image: AssetImage('images/flash.png'),
                        height: 40,
                        width: 30),
                    trailing: Container(
                      width: 120,
                      child: Column(
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
                          Container(
                            width: 60,
                            height: 30,
                            margin: EdgeInsets.only(top: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Win',
                                  textAlign: TextAlign.center,
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
                        ],
                      ),
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
}
