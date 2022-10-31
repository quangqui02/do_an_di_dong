// import 'package:do_an/screens/login_screens/components/top_text.dart';
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

  Widget loginButton(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 1, right: 20),
      child: ElevatedButton(
        onPressed: () {},
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

  Widget logos() {
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
                        onPressed: () {}, //bo sung 3
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
                    loginButton('Đăng Ký Số Điện Thoại'),
                    loginButton('Đăng Ký Email'),
                    logos(),
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
