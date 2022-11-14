import 'package:doan_didong/home/home.dart';
import 'package:doan_didong/login_screen/login_sreen.dart';
import 'package:doan_didong/player/change_pass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Userr extends StatelessWidget {
  const Userr({Key? key}) : super(key: key);

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
                image: AssetImage('images/backgroud.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.only(top: 40),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Image(
                        width: 30,
                        height: 30,
                        image: AssetImage('images/left.png'),
                      )),
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
                      color: const Color(0xff7c94b6),
                      image: const DecorationImage(
                        image: AssetImage('images/backgroud.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
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
                      backgroundImage: AssetImage("images/user.png"),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Player',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Player@gmail.com',
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
                  buildButton(context, '2000', 'Thành tích'),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '|',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  buildButton(context, '20', 'Trò chơi'),
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
                        Icon(
                          Icons.vpn_key,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          'Đổi Mật Khẩu',
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
                  child: Text(
                    'Đăng Xuất',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Text(
                  'Bạn Có Muốn Đăng Xuất',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginAccount()),
                              );
                            },
                            child: Text(
                              'Ok',
                              style: TextStyle(color: Colors.red, fontSize: 12),
                            )),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(139, 126, 114, 114),
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Hủy',
                              style: TextStyle(color: Colors.red, fontSize: 12),
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
