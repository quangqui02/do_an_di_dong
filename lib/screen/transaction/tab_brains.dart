import 'package:doan_didong/screen/transaction/transaction_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'buybrains.dart';

class TabBrains extends StatefulWidget {
  const TabBrains({super.key});

  @override
  State<TabBrains> createState() => _TabBrainsState();
}

class _TabBrainsState extends State<TabBrains> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 2.5,
              tabs: <Tab>[
                Tab(
                  child: Text(
                    'Nạp điểm',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "BarlowBold",
                        color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Lịch sử giao dịch',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "BarlowBold",
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              BuyBrains(),
              TransactionHistory(),
            ],
          ),
        ),
      ),
    );
  }
}
