import 'package:flutter/material.dart';

import '../utility/app_colors.dart';

Widget text(
    {required String text,
    required double size,
    Color? color,
    boldText = "",
    TextOverflow? overflow,
    fontFamily = "",
    maxLines = 9}) {
  return Text(
    text,
    overflow: overflow,
    style: TextStyle(
        color: color ?? Color.fromARGB(255, 246, 240, 240),
        fontSize: size,
        fontWeight: boldText == "" ? FontWeight.normal : boldText,
        fontFamily: fontFamily == "" ? 'SF-Regular' : fontFamily,
        decoration: TextDecoration.none),
    maxLines: maxLines,
  );
}
