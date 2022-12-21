import 'package:doan_didong/models/addfriend/FriendShip_object.dart';
import 'package:flutter/material.dart';

import '../../models/addfriend/friendship_provider.dart';

class FriendShip extends StatefulWidget {
  const FriendShip({super.key});

  @override
  State<FriendShip> createState() => _FriendShipState();
}

class _FriendShipState extends State<FriendShip> {
  List<FriendShipObject> lsFriends = [];
  void loadDanhSach() async {
    final data = await FriendShipProvider.getAllContacts();
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
                              width: 120,
                              child: Text(
                                textAlign: TextAlign.left,
                                '${lsFriends[index].name}',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '${lsFriends[index].status}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          // ElevatedButton(
                          //   onPressed: () {},
                          //   child: Icon(
                          //     Icons.add,
                          //     size: 20,
                          //   ),
                          //   style: ButtonStyle(
                          //     shape: MaterialStateProperty.all(CircleBorder()),

                          //     // padding:
                          //     //     MaterialStateProperty.all(EdgeInsets.all(5)),
                          //     backgroundColor: MaterialStateProperty.all(
                          //         Colors.green), // <-- Button color
                          //     // overlayColor:
                          //     //     MaterialStateProperty.resolveWith<Color?>(
                          //     //         (states) {
                          //     //   if (states.contains(MaterialState.pressed))
                          //     //     return Colors.red; // <-- Splash color
                          //     // }),
                          //   ),
                          // ),
                          // ElevatedButton(
                          //   onPressed: () {},
                          //   child: Icon(
                          //     Icons.remove,
                          //     size: 15,
                          //   ),
                          //   style: ButtonStyle(
                          //     shape: MaterialStateProperty.all(CircleBorder()),
                          //     padding:
                          //         MaterialStateProperty.all(EdgeInsets.all(5)),
                          //     backgroundColor: MaterialStateProperty.all(
                          //         Colors.red), // <-- Button color
                          //     // overlayColor:
                          //     //     MaterialStateProperty.resolveWith<Color?>(
                          //     //         (states) {
                          //     //   if (states.contains(MaterialState.pressed))
                          //     //     return Colors.red; // <-- Splash color
                          //     // }),
                          //   ),
                          // ),
                          if ('${lsFriends[index].status}' == "Thêm bạn?")
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
