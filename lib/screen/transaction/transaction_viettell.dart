import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionViettel extends StatefulWidget {
  const TransactionViettel({super.key});

  @override
  State<TransactionViettel> createState() => _TransactionViettelState();
}

class _TransactionViettelState extends State<TransactionViettel> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.05),
                  child: TextButton(
                    onPressed: () {
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute<void>(
                      //     builder: (BuildContext context) => HomeTab(),
                      //   ),
                      // );
                    },
                    child: Image(
                      image: AssetImage('images/back.png'),
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: size.height * 0.3,
              margin: EdgeInsets.only(bottom: size.height * 0.1),
              child: Image(
                image: AssetImage('images/viettel.png'),
                height: 300,
                width: 300,
              ),
            ),
            Column(
              children: [
                inputField(
                  'So Seri',
                ),
                inputField(
                  'Ma The',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget inputField(String hint) {
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
            //icon
          ),
        ),
      ),
    ),
  );
}
