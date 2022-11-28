import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_register_email.dart';
import 'login_register_phone.dart';

class TabLogin extends StatefulWidget {
  const TabLogin({super.key});

  @override
  State<TabLogin> createState() => _TabLoginState();
}

class _TabLoginState extends State<TabLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            leading: Icon(
              Icons.arrow_back,
              size: 30.0,
            ),
            title: Text(
              'Đăng ký',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),
            ),
            centerTitle: true,
            bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 2.5,
              tabs: <Tab>[
                Tab(
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Điện thoại',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              LoginEmail(),
              LoginPhone(),
            ],
          ),
        ),
      ),
    );
  }
}
