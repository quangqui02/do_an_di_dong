import 'package:doan_didong/screen/home/home.dart';
import 'package:doan_didong/screen/transaction/transaction_mobiphone.dart';
import 'package:doan_didong/screen/transaction/transaction_viettell.dart';
import 'package:doan_didong/screen/transaction/transaction_vinaphone.dart';
import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  Widget Viettel(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 1, right: 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TransactionViettel()),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: const StadiumBorder(),
          primary: Color.fromARGB(255, 255, 255, 255),
          elevation: 8, // đổ bóng
          shadowColor: Color.fromARGB(221, 0, 0, 0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Image(
                image: AssetImage('images/viettel.png'),
                height: 35,
                width: 40,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget MobiPhone(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 1, right: 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TransactionMobiphone()),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: const StadiumBorder(),
          primary: Color.fromARGB(255, 255, 255, 255),
          elevation: 8, // đổ bóng
          shadowColor: Color.fromARGB(221, 0, 0, 0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Image(
                image: AssetImage('images/mobiphone.png'),
                height: 35,
                width: 40,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget VinaPhone(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 1, right: 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TransactionVinaphone()),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: const StadiumBorder(),
          primary: Color.fromARGB(255, 255, 255, 255),
          elevation: 8, // đổ bóng
          shadowColor: Color.fromARGB(221, 0, 0, 0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                child: Image(
                  image: AssetImage('images/vinaphone.png'),
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
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
                      image: AssetImage('images/background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => Transaction(),
                            ),
                          );
                        },
                        child: Image(
                          width: 30,
                          height: 30,
                          image: AssetImage('images/back.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MobiPhone('Mobiphone', context),
                    Viettel('Viettel', context),
                    VinaPhone('Vinaphone', context),
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
