import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Screens {
  createAccount,
  welcomback,
}

class ChangePass extends StatefulWidget {
  const ChangePass({Key? key}) : super(key: key);

  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  Widget Textt() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 0, 0, 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'ĐỔI MẬT KHẨU',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.w500),
                //textDirection: null,
              ),
            ),
          ],
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
              prefixIcon: Icon(
                iconData,
              ), //icon
            ),
          ),
        ),
      ),
    );
  }

  Widget ChangButton(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: const StadiumBorder(),
          primary: Colors.blue[900],
          elevation: 8, // đổ bóng
          shadowColor: Colors.black87,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
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
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChangePass()),
                            );
                          },
                          child: Image(
                            width: 30,
                            height: 30,
                            image: AssetImage('images/back.png'),
                          )),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Textt(),
                    InputBorder('Mật khẩu hiện tại', Icons.key_outlined),
                    InputBorder('Nhập mật khẩu mới', Icons.password_outlined),
                    InputBorder(
                        'Nhập lại mật khẩu mới', Icons.password_outlined),
                    ChangButton('Đổi mật khẩu'),
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
