// import 'package:do_an/screens/login_screens/components/top_text.dart';
import 'package:doan_didong/login_screen/login_register_email.dart';
import 'package:doan_didong/login_screen/login_register_phone.dart';
import 'package:doan_didong/login_screen/login_sreen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'dart:math' as math;

// import 'center_widget/center_widget.dart';
// import 'login_content.dart';

// enum lsScreens {
//   createAccount,
//   welcomback,
// }

class LoginRegister extends StatelessWidget {
  const LoginRegister({Key? key}) : super(key: key);

  Widget loginButtonEmail(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 1, right: 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginEmail()),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: const StadiumBorder(),
          primary: Color.fromARGB(255, 255, 255, 255),
          elevation: 8, // đổ bóng
          shadowColor: Color.fromARGB(221, 0, 0, 0),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget loginButtonPhone(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 1, right: 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPhone()),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: const StadiumBorder(),
          primary: Color.fromARGB(255, 255, 255, 255),
          elevation: 8, // đổ bóng
          shadowColor: Color.fromARGB(221, 0, 0, 0),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget logos(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Bạn đã có tài khoản ?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                        )),
                  ),
                  Container(
                    child: Row(children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginAccount()),
                          );
                        }, //bo sung 3
                        child: const Text(
                          'Đăng nhập',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // const currentScreen = lsScreens.createAccount;

    return Scaffold(
      body: Stack(
        children: [
          // Positioned(
          //   top: 90,
          //   left: 24,
          //   child: TopTextRGT(screen: currentScreen),
          // ),
          Container(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: const DecorationImage(
                      image: AssetImage('images/backgroud.jpg'),
                      fit: BoxFit.cover,
                    ),
                    // border: Border.all(
                    //   width: 50,
                    // ),
                    // borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    loginButtonPhone('Đăng Ký Số Điện Thoại', context),
                    loginButtonEmail('Đăng Ký Email', context),
                    logos(context),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
