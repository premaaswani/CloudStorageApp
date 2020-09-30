import 'package:flutter/material.dart';

class Appcolor {
  static final Color top_color = Color(0xff2A2D50);
  static final Color clip_ccolor = Color(0xff383868);
  static final Color background = Color(0xffD1D5EB);
  static final Color bottom = Color(0xffC0C7E6);
  static final Color progress = Color(0xff3C77F2);


  static final LinearGradient linearGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        clip_ccolor,
        top_color,
      ],
      stops: [
        0.1,
        0.6,
      ]);

  static final LinearGradient linearGradient2 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        clip_ccolor,
        top_color,
      ],
      stops: [
        0.4,
        0.9,
      ]);
}
