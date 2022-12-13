import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

error(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Color.fromARGB(255, 6, 70, 248),
    content: Text(
      text,
      textAlign: TextAlign.center,
    ),
    duration: const Duration(seconds: 1),
  ));
}
