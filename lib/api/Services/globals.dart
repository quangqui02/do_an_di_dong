import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String baseURL = "https://fa63-2402-800-6346-cd38-5ca7-24d1-91ce-1a5f.ap.ngrok.io/api";
// "http://10.0.2.2:8000/api";
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
