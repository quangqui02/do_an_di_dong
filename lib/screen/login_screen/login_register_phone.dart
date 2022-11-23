import 'dart:ui';

import 'package:flutter/material.dart';

import 'login_register_email.dart';
import 'login_sreen.dart';

class LoginPhone extends StatelessWidget {
  const LoginPhone({Key? key}) : super(key: key);

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
              fillColor: Color.fromARGB(255, 255, 255, 255),

              hintText: hint,
              // hiển thị chữ

              prefixIcon: Icon(
                iconData,
                // color: Color.fromARGB(255, 38, 0, 255),
              ), //icon
            ),
          ),
        ),
      ),
    );
  }

  Widget inputPhone(String hint, IconData iconData) {
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
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              // tạo input
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), // bo tròn
                borderSide: BorderSide.none, // bỏ đường viền
              ),
              filled: true,
              fillColor: Color.fromARGB(255, 255, 255, 255),
              hintText: hint,
              // hiển thị chữ
              prefixIcon: Icon(
                iconData,
                // color: Color.fromARGB(255, 38, 0, 255),
              ), //icon
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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Bạn đã có tài khoản?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 17,
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
                            fontSize: 17,
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

  Widget loginButton(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 16),
      child: ElevatedButton(
        onPressed: () => _dialogRegister(context),
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

  Widget InputBorder(String hint, IconData iconData) {
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
            obscureText: true,
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

  @override
  Widget build(BuildContext context) {
    // const currentScreen = lsScreens.createAccount;

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      image: AssetImage('images/background.png'),
                      fit: BoxFit.cover,
                    ),
                    // border: Border.all(
                    //   width: 50,
                    // ),
                    // borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginEmail()),
                          );
                        },
                        icon: Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            'ĐĂNG KÝ ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontWeight: FontWeight.w500),
                            //textDirection: null,
                          ),
                        ),
                      ],
                    ),
                    inputField('Tên Đăng Nhập', Icons.person_outline),
                    inputPhone('Số điện thoại', Icons.phone),
                    InputBorder('Mật khẩu', Icons.password),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50, top: 5, bottom: 5),
                          child: Text(
                            'Từ 8 ký tự (tối đa 20 ký tự), 1 chữ cái và 1 chữ số, 1 ký tự đặc biệt (Ví dụ: ! @ #  %)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                    InputBorder('Xác nhận mật khẩu', Icons.password),
                    loginButton('Đăng Ký', context),
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

Future<void> _dialogRegister(BuildContext context) {
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
                    'Đăng Ký',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Text(
                  'Bạn Đăng Ký Thành Công',
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
                              'Đăng Nhập',
                              style: TextStyle(color: Colors.red, fontSize: 12),
                            )),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(139, 126, 114, 114),
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                      ),
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
