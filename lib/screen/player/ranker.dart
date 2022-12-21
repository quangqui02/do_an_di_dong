import 'package:doan_didong/screen/home/hometab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/friend/friend_object.dart';
import '../../models/friend/friend_provider.dart';
import '../../models/ranker_object.dart';
import '../../models/ranker_provider.dart';
import '../../models/user.dart';
import '../home/home.dart';

class Ranker extends StatefulWidget {
  Ranker({
    Key? key,
  }) : super(key: key);

  @override
  State<Ranker> createState() => _RankerState();
}

class _RankerState extends State<Ranker> {
  int stt = 0;
  // List<FriendObject> lsFriends = [];
  // void loadDanhSach() async {
  //   final data = await FriendProvider.getAllContacts();
  //   setState(() {});
  //   lsFriends = data;
  // }

  @override
  void initState() {
    super.initState();
    // loadDanhSach();
  }

  RankServect ranksService = RankServect();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bảng Xếp Hạng'),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: const DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: FutureBuilder<List>(
            future: ranksService.getAllranker(),
            builder: (context, snapshot) {
              print(snapshot.data);
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, i) {
                    return Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(151, 128, 138, 145),
                            border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: ListTile(
                              leading: Text(
                                '${stt += 1}',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image(
                                    width: 40,
                                    height: 40,
                                    image: AssetImage('images/user.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      snapshot.data![i]['name'],
                                      //overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              subtitle: null,
                              trailing: Padding(
                                padding: const EdgeInsets.only(right: 30.0),
                                child: Text(
                                  snapshot.data![i]['point'].toString(),
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ));
                  },
                );
              } else {
                return const Center(
                  child: Text('No Data Found'),
                );
              }
            },
          ),
        ));
  }
}
