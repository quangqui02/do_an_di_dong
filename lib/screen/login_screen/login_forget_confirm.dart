import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_sreen.dart';

class LoginForgetConfirm extends StatefulWidget {
  const LoginForgetConfirm({super.key});

  @override
  State<LoginForgetConfirm> createState() => _LoginForgetConfirmState();
}

class _LoginForgetConfirmState extends State<LoginForgetConfirm> {
  Widget responseOption(BuildContext context) {
    int _method = 0;
    return Padding(
      padding: const EdgeInsets.only(top: 70.0),
      child: Column(
        children: [
          RadioListTile(
            title: Text(
              'Gửi SMS',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            subtitle: Text('*******089',
                style: TextStyle(color: Colors.white, fontSize: 13)),
            value: 1,
            groupValue: _method,
            onChanged: (value) {
              setState(() {
                _method = int.parse(value.toString());
              });
            },
          ),
          RadioListTile(
            title: Text(
              'Gửi Email',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            subtitle: Text('@*********.com',
                style: TextStyle(color: Colors.white, fontSize: 13)),
            value: 0,
            groupValue: _method,
            onChanged: (value) {
              setState(() {
                _method = int.parse(value.toString());
              });
            },
          ),
        ],
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
                    child: Text("Bạn đã có tài khoản?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        )),
                  ),
                  Row(children: [
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
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            height: 100,
                            width: 100,
                            image: AssetImage('images/user.png'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Tên tài khoản',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text(
                              'Chúng tôi sẽ gửi liên kết hoặc mã đăng nhập để  bạn truy cập vào tài khoản',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    responseOption(context),
                    loginButton('Gửi liên kết đăng nhập'),
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
