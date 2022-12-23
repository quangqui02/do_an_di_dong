import 'dart:convert';
import 'dart:ui';

import 'package:doan_didong/api/Services/auth_services.dart';
import 'package:doan_didong/api/Services/globals.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'login_register_phone.dart';
import 'login_sreen.dart';

class LoginEmail extends StatefulWidget {
  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  final formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _name = '';

  createAccountPressed() async {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_email);
    if (emailValid) {
      http.Response response =
          await AuthServices.register(_name, _email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        _dialogRegister(context);
      } else {
        errorSnackBar(context, responseMap.values.first[0]);
      }
    } else {
      errorSnackBar(context, 'Sai định dạng email');
    }
  }

  // const LoginEmail({Key? key}) : super(key: key);
  @override
  Widget logos(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
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
            child: Form(
              key: formKey, //key for form
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Image(
                          image: AssetImage('images/logoapp.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 36, vertical: 8),
                      child: SizedBox(
                        height: 60,
                        child: Material(
                          elevation: 8, // góc đổ bóng
                          shadowColor: Colors.black87,
                          color: Colors.transparent,

                          borderRadius:
                              BorderRadius.circular(10), // bo tròn bóng
                          child: TextFormField(
                              textAlignVertical:
                                  TextAlignVertical.bottom, // gạch chân input
                              onChanged: (value) {
                                _name = value;
                              },
                              decoration: InputDecoration(
                                // tạo input

                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(10), // bo tròn
                                  borderSide: BorderSide.none, // bỏ đường viền
                                ),
                                filled: true,
                                fillColor: Color.fromARGB(255, 255, 255, 255),

                                hintText: 'Tên Người Chơi',
                                // hiển thị chữ

                                prefixIcon: const Icon(
                                  Icons.person_outline,
                                  // color: Color.fromARGB(255, 38, 0, 255),
                                ), //icon
                              ),
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                                  return "Nhập Tên Người Chơi";
                                }
                                return null;
                              }),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 36, vertical: 8),
                      child: SizedBox(
                        height: 55,
                        child: Material(
                          elevation: 8, // góc đổ bóng
                          shadowColor: Colors.black87,
                          color: Colors.transparent,

                          borderRadius:
                              BorderRadius.circular(10), // bo tròn bóng
                          child: TextFormField(
                              textAlignVertical:
                                  TextAlignVertical.bottom, // gạch chân input
                              onChanged: (value) {
                                _email = value;
                              },
                              decoration: InputDecoration(
                                // tạo input

                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(10), // bo tròn
                                  borderSide: BorderSide.none, // bỏ đường viền
                                ),
                                filled: true,
                                fillColor: Color.fromARGB(255, 255, 255, 255),

                                hintText: 'Email',
                                // hiển thị chữ

                                prefixIcon: const Icon(
                                  Icons.email,
                                  // color: Color.fromARGB(255, 38, 0, 255),
                                ), //icon
                              ),
                              validator: (value) {
                                // RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                                if (value!.isEmpty ||
                                    !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                        .hasMatch(value)) {
                                  return "Nhập email";
                                }
                                return null;
                              }),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 36, vertical: 8),
                      child: SizedBox(
                        height: 55,
                        child: Material(
                          elevation: 8, // góc đổ bóng
                          shadowColor: Colors.black87,
                          color: Colors.transparent,

                          borderRadius:
                              BorderRadius.circular(10), // bo tròn bóng
                          child: TextFormField(
                            textAlignVertical:
                                TextAlignVertical.bottom, // gạch chân input
                            onChanged: (value) {
                              _password = value;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              // tạo input

                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(10), // bo tròn
                                borderSide: BorderSide.none, // bỏ đường viền
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255),

                              hintText: 'Mật khẩu',

                              prefixIcon: const Icon(
                                Icons.password_outlined,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 15),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            createAccountPressed();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          shape: const StadiumBorder(),
                          primary: Colors.blue[900],
                          elevation: 8, // đổ bóng
                          shadowColor: Colors.black87,
                        ),
                        child: Text(
                          'Đăng ký',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          logos(context),
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
                SizedBox(
                  height: 20,
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
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
