// import 'package:do_an/screens/login_screens/components/top_text.dart';
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

class LoginForget extends StatelessWidget {
  const LoginForget({Key? key}) : super(key: key);

  Widget inputField(String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8, // góc đổ bóng
          shadowColor: Colors.black87,
          color: Colors.transparent,

          borderRadius: BorderRadius.circular(30), // bo tròn bóng
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom, // gạch chân input
            decoration: InputDecoration(
              // tạo input

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), // bo tròn
                borderSide: BorderSide.none, // bỏ đường viền
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint, // hiển thị chữ
              prefixIcon: Icon(iconData), //icon
            ),
          ),
        ),
      ),
    );
  }

  Widget logos(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

  Widget loginButton(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: const StadiumBorder(),
          primary: Colors.blue[900],
          elevation: 8, // đổ bóng
          shadowColor: Colors.black87,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
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
                    inputField('Tên Đăng Nhập', Icons.person_outline),
                    inputField('Email', Icons.email),
                    loginButton('Lấy Mật Khẩu'),
                  ],
                ),
                logos(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
