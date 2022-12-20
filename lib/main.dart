import 'package:doan_didong/screen/field_screen/ListCard.dart';
import 'package:doan_didong/screen/field_screen/field.dart';
import 'package:doan_didong/screen/home/guide.dart';
import 'package:doan_didong/screen/home/hometab.dart';
import 'package:doan_didong/screen/login_screen/login_forget.dart';
import 'package:doan_didong/screen/login_screen/login_register.dart';
import 'package:doan_didong/screen/login_screen/login_register_email.dart';
import 'package:doan_didong/screen/login_screen/login_register_phone.dart';
import 'package:doan_didong/screen/login_screen/login_sreen.dart';
import 'package:doan_didong/screen/home/home.dart';
import 'package:doan_didong/screen/login_screen/tab_login.dart';
import 'package:doan_didong/screen/player/change_pass.dart';
import 'package:doan_didong/screen/player/history.dart';
import 'package:doan_didong/screen/player/ranker.dart';
import 'package:doan_didong/screen/player/user.dart';
import 'package:doan_didong/screen/question_screen/audience_help.dart';
import 'package:doan_didong/screen/question_screen/level.dart';
import 'package:doan_didong/screen/question_screen/question.dart';
import 'package:doan_didong/screen/transaction/buybrains.dart';
import 'package:doan_didong/screen/transaction/transaction.dart';
import 'package:doan_didong/screen/transaction/transaction_history.dart';
import 'package:doan_didong/screen/transaction/transaction_viettell.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SUPER BUG BRAIN',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // scaffoldBackgroundColor: kBackgroundColor,
        // textTheme: Theme.of(context).textTheme.apply(bodyColor: kPrimaryColor),
        primarySwatch: Colors.blue,
      ),
      home: LoginAccount(),
    );
  }
}
