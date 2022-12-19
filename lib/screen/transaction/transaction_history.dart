import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: <Widget>[
                  transactionHistoryState(
                      'images/creditcard.png',
                      'Thanh toán thành công',
                      'images/checked.png',
                      '10/11/2022 2:07',
                      'Quý khách đã thực hiện thanh toán thành công số tiền 20.000đ '),
                  transactionHistoryState(
                      'images/creditcard.png',
                      'Thanh toán thành công',
                      'images/checked.png',
                      '10/11/2022 2:07',
                      'Quý khách đã thực hiện thanh toán thành công số tiền 499.000đ '),
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
          ],
        ),
      ),
    );
  }

  Widget transactionHistoryState(
      String card, String status, String check, String time, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(151, 128, 138, 145),
          border: Border.all(
              color: Colors.white, width: 2.0, style: BorderStyle.solid),
          borderRadius: const BorderRadius.all(
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
                style: const TextStyle(
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
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                width: 340,
                height: 50,
                child: Text(
                  content,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
