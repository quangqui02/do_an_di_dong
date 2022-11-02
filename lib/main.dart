import 'package:doan_didong/login_screen/login_forget.dart';
import 'package:doan_didong/login_screen/login_register.dart';
import 'package:doan_didong/login_screen/login_register_email.dart';
import 'package:doan_didong/login_screen/login_sreen.dart';
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
      title: 'Game',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // scaffoldBackgroundColor: kBackgroundColor,
        // textTheme: Theme.of(context).textTheme.apply(bodyColor: kPrimaryColor),
        primarySwatch: Colors.blue,
      ),
      // long sua ne
      // tao la qui
      // long sua 2
      //quang qui
      home: const LoginEmail(),
    );
  }
}
