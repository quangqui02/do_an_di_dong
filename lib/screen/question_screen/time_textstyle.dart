import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../appcolor.dart';

Widget normalText({
  String? text,
  Color? color,
  double? size,
}) {
  return Text(
    text!,
    style: TextStyle(
      fontFamily: "quick_seml",
      fontSize: 18,
      color: AppColor.fieldColor,
    ),
  );
}

Widget headingText({
  String? text,
  Color? color,
  double? size,
}) {
  return Text(
    text!,
    style: TextStyle(
      fontFamily: "quick_bold",
      fontSize: 18,
      color: Colors.red[400],
    ),
  );
}
