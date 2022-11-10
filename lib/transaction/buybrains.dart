import 'package:doan_didong/home/home.dart';
import 'package:doan_didong/transaction/transaction_history.dart';
import 'package:flutter/material.dart';

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
            image: AssetImage('images/backgroud.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 70.0, bottom: 40, left: 20, right: 25),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 55),
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 15),
              child: Row(
                children: [
                  Column(
                    children: [
                      _field('100', '9.000đ', 'images/test.png'),
                      _field('500', '49.000đ', 'images/test.png'),
                      _field('1000', '99.000đ', 'images/test.png'),
                      _field('2000', '199.000đ', 'images/test.png'),
                    ],
                  ),
                ],
              ),
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
            width: 365,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff7c94b6),
              border: Border.all(
                  color: Colors.white, width: 3.0, style: BorderStyle.solid),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 13, bottom: 10),
              child: ListTile(
                leading: Container(
                  child: Image(
                    image: AssetImage(image),
                    height: 60,
                    width: 60,
                  ),
                ),
                title: Text(
                  textAlign: TextAlign.left,
                  brain,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                    letterSpacing: 1,
                  ),
                ),
                trailing: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => Home(),
                      ),
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
                      padding: const EdgeInsets.all(7.0),
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
