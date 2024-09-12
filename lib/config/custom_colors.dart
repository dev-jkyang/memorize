import 'package:flutter/material.dart';

const primaryColor = Color(0xff282442);
const bgWhiteColor = Color(0xffCCCCCC);
const positiveButtonColor = Color(0xff4875CD);
const greyTextColor = Color(0xff747474);
const pupleColor = Color(0xff6E66C6);

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