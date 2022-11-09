import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            image: AssetImage('images/backgroud.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 70.0, bottom: 40, left: 20, right: 20),
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
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 40),
                      child: Text(
                        'Nạp điểm',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      'Lịch sử giao dịch',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      transactionHistoryState(),
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

  transactionHistoryState() {
    return Container(
      child: Card(
        child: Column(
          children: [
            Image(
              width: 50,
              height: 50,
              image: AssetImage('images/test.png'),
            ),
            Column(
              children: [
                Text(
                    'Bạn đã thực hiện thanh toán thành công số tiền 10.000.000đ ')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
