import 'package:doan_didong/screen/player/change_pass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/user.dart';
import '../home/home.dart';
import '../login_screen/login_sreen.dart';

class Userr extends StatefulWidget {
  Userr({Key? key, required this.user}) : super(key: key);
  User? user;
  @override
  State<Userr> createState() => _UserrState();
}

class _UserrState extends State<Userr> {
  @override
  Widget build(BuildContext context) {
    final icon = CupertinoIcons.moon_stars;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.only(top: 40),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () => _dialogBuilder(context),
                      child: Image(
                        width: 30,
                        height: 30,
                        image: AssetImage('images/logout.png'),
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 10,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('${this.widget.user!.image}'),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    '${this.widget.user!.name}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '${this.widget.user!.email}',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildButton(
                      context, '${this.widget.user!.point}', 'Thành tích'),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '|',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  buildButton(
                      context, '${this.widget.user!.point}', 'Trò chơi'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChangePass()),
                    );
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.vpn_key,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Đổi mật khẩu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
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
          Container(
            height: 120,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  // child: Text(
                  //   'Đăng Xuất',
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(color: Colors.white, fontSize: 20),
                  // ),
                ),
                Text(
                  'Bạn có muốn đăng xuất không? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (context) => LoginAccount(),
                                  ),
                                  (route) => false);
                            },
                            child: Text(
                              'OK',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(139, 126, 114, 114),
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Hủy',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(139, 126, 114, 114),
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      );
    },
  );
}
