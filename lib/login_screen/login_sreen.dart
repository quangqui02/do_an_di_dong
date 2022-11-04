import 'package:doan_didong/login_screen/login_forget.dart';
import 'package:doan_didong/login_screen/login_register.dart';
import 'package:flutter/material.dart';

enum Screens {
  createAccount,
  welcomback,
}

class LoginAccount extends StatelessWidget {
  const LoginAccount({Key? key}) : super(key: key);

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

  Widget loginButton(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10),
          shape: const StadiumBorder(),
          primary: Colors.blue[900],
          elevation: 12, // đổ bóng
          shadowColor: Colors.black87,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget orDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
      child: Row(children: [
        Flexible(
          child: Container(
            height: 1,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: const Text(
            'or',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Flexible(
          child: Container(
            height: 1,
            color: Colors.black,
          ),
        ),
      ]),
    );
  }

  Widget logos(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
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
                    fontSize: 15,
                  )),
            ),
            Container(
              child: Row(children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginRegister()),
                    );
                  }, //bo sung 3
                  child: const Text(
                    'Đăng kí',
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
    );
  }

  @override
  Widget build(BuildContext context) {
    const currentScreen = Screens.createAccount;

    return Scaffold(
      body: Stack(
        children: [
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
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 16),
                      child: Text(
                        'Đăng Nhập',
                        style: TextStyle(
                          fontSize: 60,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    inputField('Name', Icons.person_outline),
                    InputBorder('Password', Icons.password_outlined),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginForget()),
                          );
                        }, //bo sung 3
                        child: const Text(
                          'Quên mật khẩu',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    loginButton('Sign Up'),
                    orDivider(),
                    logos(context),
                  ],
                ),
                logostag(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
