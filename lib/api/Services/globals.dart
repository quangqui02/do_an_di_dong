import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String baseURL =
    "https://5e42-2001-ee0-555b-f200-c1ca-f2eb-a337-3f0.ap.ngrok.io/api"; //emulator localhost

// nếu muốn load câu hoi api thì sử dụng cái này và comment cái var link trên
// const String baseURL =
// "http://127.0.0.1:8000/api";
const Map<String, String> headers = {"Content-Type": "application/json"};

errorSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red,
    content: Text(text),
    duration: const Duration(seconds: 5),
  ));
}
