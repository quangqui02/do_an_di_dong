import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../models/friend/friend_object.dart';
import '../../models/friend/friend_provider.dart';

class Friend extends StatefulWidget {
  const Friend({super.key});

  @override
  State<Friend> createState() => _FriendState();
}

class _FriendState extends State<Friend> {
  List<FriendObject> lsFriends = [];
  void loadDanhSach() async {
    final data = await FriendProvider.getAllContacts();
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
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32.0))),
                            contentPadding: EdgeInsets.only(top: 10.0),
                            actions: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
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
                                            'Thông tin',
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                151, 128, 138, 145),
                                            border: Border.all(
                                                color: Colors.white,
                                                width: 2.0,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          child: Image(
                                            image: AssetImage(
                                                'images/businessman.png'),
                                            height: 45,
                                            width: 45,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '${this.lsFriends[index].name}',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Thách Đấu',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 15),
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
                    leading: Container(
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
                      child: Image(
                        image: AssetImage('images/businessman.png'),
                        height: 45,
                        width: 45,
                      ),
                    ),
                    title: Text(
                      textAlign: TextAlign.left,
                      '${lsFriends[index].name}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 19,
                      ),
                    ),
                    trailing: Text(
                      '${lsFriends[index].point}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        letterSpacing: 0,
                      ),
                      // Image(
                      //     image: AssetImage('images/trophy.png'),
                      //     height: 35,
                      //     width: 45,
                      //   ),
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
                          'Thông tin',
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
                    'Bạn muốn thách đầu người chơi này!',
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
