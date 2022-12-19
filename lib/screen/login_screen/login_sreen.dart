import 'dart:convert';

import 'package:doan_didong/api/Services/auth_services.dart';
import 'package:doan_didong/api/Services/globals.dart';
import 'package:doan_didong/screen/error.dart';
import 'package:doan_didong/screen/field_screen/player.dart';
import 'package:doan_didong/screen/home/home.dart';
import 'package:doan_didong/screen/home/hometab.dart';
import 'package:doan_didong/screen/login_screen/login_register_email.dart';
import 'package:doan_didong/screen/login_screen/tab_login.dart';
import 'package:doan_didong/screen/player/user.dart';
import 'package:doan_didong/screen/question_screen/question.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import '../../models/user.dart';
import 'login_forget.dart';
import 'login_register.dart';

class LoginAccount extends StatefulWidget {
  LoginAccount({Key? key}) : super(key: key);

  @override
  State<LoginAccount> createState() => _LoginAccountState();
}

class _LoginAccountState extends State<LoginAccount> {
  String _email = '';
  String _password = '';

  loginPressed() async {
    if (_email.isNotEmpty && _password.isNotEmpty) {
      http.Response response = await AuthServices.login(_email, _password);
      Map responseMap = jsonDecode(response.body);
      print(responseMap);

      if (response.statusCode == 200) {
        User? us = await AuthServices.fetchUser(_email, _password);
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => HomeTab(
                user: us,
              ),
            ));
        error(context, 'Đăng nhâp thành công');
      } else {
        errorSnackBar(context, responseMap.values.first);
      }
    } else {
      errorSnackBar(context, 'Vui lòng nhập đầy đủ thông tin');
    }
  }

  @override
  Widget inputField(String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 55,
        child: Material(
          elevation: 8, // góc đổ bóng
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10), // bo tròn bóng
          child: TextField(
            onChanged: (value) {
              _email = value;
            },
            textAlignVertical: TextAlignVertical.bottom, // gạch chân input
            decoration: InputDecoration(
              // tạo input
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10), // bo tròn
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

  Widget InputBorder(String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 55,
        child: Material(
          elevation: 8, // góc đổ bóng
          shadowColor: Colors.black87,
          color: Colors.transparent,

          borderRadius: BorderRadius.circular(10), // bo tròn bóng
          child: TextField(
            onChanged: (value) {
              _password = value;
            },
            obscureText: true,
            textAlignVertical: TextAlignVertical.bottom, // gạch chân input
            decoration: InputDecoration(
              // tạo input

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10), // bo tròn
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

  Widget loginButton(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: ElevatedButton(
        onPressed: () => loginPressed(),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: const StadiumBorder(),
          primary: Colors.blue[900],
          elevation: 12, // đổ bóng
          shadowColor: Colors.black87,
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget logos(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {}, //bo sung 3
                child: Image(
                  height: 40,
                  width: 40,
                  image: AssetImage('images/facebook.png'),
                ),
              ),
              TextButton(
                onPressed: () {}, //bo sung 3
                child: Image(
                  height: 40,
                  width: 40,
                  image: AssetImage('images/google.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget logostag(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Bạn chưa có tài khoản ?",
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
                      MaterialPageRoute(builder: (context) => LoginEmail()),
                    );
                  }, //bo sung 3
                  child: const Text(
                    'Đăng ký',
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'ĐĂNG NHẬP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              inputField('Tên đăng nhập', Icons.person_outline),
              InputBorder('Mật khẩu', Icons.password_outlined),
              Padding(
                padding: const EdgeInsets.only(left: 210),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginForget()),
                    );
                  }, //bo sung 3
                  child: const Text(
                    'Quên mật khẩu?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              loginButton('Đăng nhập', context),
              logos(context),
            ],
          ),
          logostag(context),
        ],
      ),
    );
  }
}
