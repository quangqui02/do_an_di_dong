import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Screens {
  createAccount,
  welcomback,
}

class ChangePass extends StatelessWidget{
const ChangePass({Key? key}) :super (key: key);

Widget Textt() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(35,0,0,0),
    child:
    Container(
    child: Text("Đổi mật khẩu",
        style: TextStyle(
          color: Colors.black,
          fontSize: 35,
        )),
      ),
  );

}
Widget InputField(String hint, IconData iconData) {
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
            fillColor: Colors.blueAccent,
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
            fillColor: Colors.blueAccent,
            hintText: hint, // hiển thị chữ
            prefixIcon: Icon(iconData), //icon
          ),
        ),
      ),
    ),
  );
}

Widget ChangButton(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 16),
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

Widget orDivider() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 8),
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

Widget logos() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Bạn chưa có tài khoản ?",
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
        ),
      ],
    ),
  );
}


@override
Widget build(BuildContext context) {

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
                  Textt(),
                  InputField('Mật khẩu hiện tại', Icons.key_outlined),
                  InputBorder('Nhập mật khẩu mới', Icons.password_outlined),
                  InputBorder('Nhập lại mật khẩu mới', Icons.password_outlined),
                  ChangButton('Đổi mật khẩu'),
                  orDivider(),
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

