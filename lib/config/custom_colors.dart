import 'package:flutter/material.dart';

const primaryColor = Color(0xff282442);
const bgWhite = Color(0xffCCCCCC);
const positiveButton = Color(0xff4875CD);
const todayGradient = LinearGradient(
  colors: [
    Color(0xFF6E66C6),
    Color(0xFF538EE0),
  ],
  stops: [
    0.6,
    0.9,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);