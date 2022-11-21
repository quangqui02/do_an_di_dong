import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';
import 'buybrains.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
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
                      )),
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
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => BuyBrains(),
                          ),
                        );
                      },
                      child: Text(
                        'Nạp điểm',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Lịch sử giao dịch',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ]),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 25.0, left: 20.0),
                child: ListView(
                  children: <Widget>[
                    transactionHistoryState(
                        'images/creditcard.png',
                        'Thanh toán thành công',
                        'images/checked.png',
                        '10/11/2022 2:07',
                        'Quý khách đã thực hiện thanh toán thành công số tiền 10.000.000đ ' +
                            'Quý khách đã thực hiện thanh toán thành công số tiền 10.000.000đ'),
                    transactionHistoryState(
                        'images/creditcard.png',
                        'Thanh toán thành công',
                        'images/checked.png',
                        '10/11/2022 2:07',
                        'Quý khách đã thực hiện thanh toán thành công số tiền 10.000.000đ ' +
                            'Quý khách đã thực hiện thanh toán thành công số tiền 10.000.000đ'),
                    transactionHistoryState(
                        'images/creditcard.png',
                        'Thanh toán thất bại',
                        'images/deletebutton.png',
                        '10/11/2022 2:07',
                        'Quý khách đã thực hiện thanh toán thất bại'),
                    transactionHistoryState(
                        'images/creditcard.png',
                        'Thanh toán thất bại',
                        'images/deletebutton.png',
                        '10/11/2022 2:07',
                        'Quý khách đã thực hiện thanh toán thất bại'),
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

  Widget transactionHistoryState(
      String card, String status, String check, String time, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 150,
        width: 320,
        decoration: BoxDecoration(
          color: Color.fromARGB(92, 124, 148, 182),
          border: Border.all(
              color: Colors.white, width: 2.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            ListTile(
              leading: Image(
                width: 40,
                height: 40,
                image: AssetImage(card),
              ),
              title: Text(
                status,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              subtitle: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Image(
                      image: AssetImage(check),
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Text(
                    time,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5),
              child: Container(
                width: 340,
                height: 50,
                child: Text(
                  content,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
