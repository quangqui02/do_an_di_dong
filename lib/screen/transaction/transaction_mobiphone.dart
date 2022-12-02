import 'package:doan_didong/screen/transaction/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionMobiphone extends StatefulWidget {
  const TransactionMobiphone({super.key});

  @override
  State<TransactionMobiphone> createState() => _TransactionViettelState();
}

class _TransactionViettelState extends State<TransactionMobiphone> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => Transaction(),
                        ),
                      );
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
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 8, 69, 184),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.white)),
              height: size.height * 0.3,
              width: size.width * 0.85,
              margin: EdgeInsets.only(bottom: size.height * 0.12),
              child: Image(
                image: AssetImage('images/mobiphone.png'),
                height: 50,
                width: 50,
              ),
            ),
            Column(
              children: [
                inputField(
                  'So Seri',
                ),
                inputField(
                  'Ma The',
                ),
                loginButton('Nap The', context)
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget loginButton(String title, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30),
    child: ElevatedButton(
      onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => HomeTab()),
        // );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
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
