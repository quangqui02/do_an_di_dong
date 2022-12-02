import 'package:flutter/material.dart';

import 'login_forget_confirm.dart';
import 'login_sreen.dart';

class LoginForget extends StatefulWidget {
  const LoginForget({Key? key}) : super(key: key);

  @override
  State<LoginForget> createState() => _LoginForgetState();
}

class _LoginForgetState extends State<LoginForget> {
  Widget inputField(String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8, // góc đổ bóng
          shadowColor: Colors.black87,
          color: Colors.transparent,

          borderRadius: BorderRadius.circular(10), // bo tròn bóng
          child: TextField(
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

  Widget loginButton(context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginForgetConfirm()),
          );
        },
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
                            height: 120,
                            width: 120,
                            image: AssetImage('images/unlock.png'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Bạn gặp sự cố khi đăng nhập?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Text(
                                'Hãy nhập tên đăng nhập của bạn và chúng tôi sẽ gửi cho bạn một liện kết dể truy vập lại vào tài khoản',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    inputField('Tên đăng nhập', Icons.person_outline),
                    loginButton(context, 'Tiếp'),
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
