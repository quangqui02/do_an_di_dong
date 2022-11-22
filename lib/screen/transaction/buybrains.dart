import 'package:doan_didong/screen/transaction/transaction.dart';
import 'package:doan_didong/screen/transaction/transaction_history.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';

class BuyBrains extends StatefulWidget {
  const BuyBrains({super.key});

  @override
  State<BuyBrains> createState() => _BuyBrainsState();
}

class _BuyBrainsState extends State<BuyBrains> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: const DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => BuyBrains()),
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
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 10, left: 20, right: 25),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.white,
                      width: 1.5,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      'Nạp điểm',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              TransactionHistory(),
                        ),
                      );
                    },
                    child: Text(
                      'Lịch sử giao dịch',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                child: ListView(
                  children: <Widget>[
                    _field('100', '9.000đ', 'images/brain.png'),
                    _field('500', '49.000đ', 'images/brain.png'),
                    _field('1000', '99.000đ', 'images/brain.png'),
                    _field('2000', '199.000đ', 'images/brain.png'),
                    _field('3000', '299.000đ', 'images/brain.png'),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            Home(),
                                      ),
                                    );
                                  },
                                  child: Image(
                                    height: 40,
                                    width: 40,
                                    image: AssetImage('images/home.png'),
                                  ),
                                ),
                                Text(
                                  'Home',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BuyBrains()),
                                    );
                                  },
                                  child: Image(
                                    height: 40,
                                    width: 40,
                                    image: AssetImage('images/store.png'),
                                  ),
                                ),
                                Text(
                                  'Shop',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade800,
                    // borderRadius: BorderRadius.all(Radius.circular(20)),
                    // border: Border.all(color: Colors.white)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _field(String brain, String field, String image) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff7c94b6),
              border: Border.all(
                  color: Colors.white, width: 3.0, style: BorderStyle.solid),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 13, bottom: 10),
              child: ListTile(
                leading: Image(
                  image: AssetImage(image),
                  height: 40,
                  width: 40,
                ),
                title: Text(
                  textAlign: TextAlign.left,
                  brain,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    letterSpacing: 1,
                  ),
                ),
                trailing: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Transaction()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Text(
                        field,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
