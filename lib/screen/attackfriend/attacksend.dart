import 'package:doan_didong/models/addfriend/FriendShip_object.dart';
import 'package:doan_didong/models/attacksend/attacksend_object.dart';
import 'package:doan_didong/models/attacksend/attacksend_provider.dart';
import 'package:flutter/material.dart';

import '../../models/addfriend/friendship_provider.dart';

class AttackSend extends StatefulWidget {
  const AttackSend({super.key});

  @override
  State<AttackSend> createState() => _AttackSendState();
}

class _AttackSendState extends State<AttackSend> {
  List<AttackSendObject> lsFriends = [];
  void loadDanhSach() async {
    final data = await AttackSendProvider.getAllContacts();
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
                  color: Colors.grey[400],
                  border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                      style: BorderStyle.solid),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
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
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              width: 87,
                              child: Text(
                                textAlign: TextAlign.left,
                                '${lsFriends[index].name}',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          // Text(
                          //   '${lsFriends[index].status}',
                          //   style: const TextStyle(
                          //     color: Colors.black,
                          //     fontWeight: FontWeight.w500,
                          //     fontSize: 14,
                          //     letterSpacing: 0,
                          //   ),
                          // ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.green),
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red),
                            child: IconButton(
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ],
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
