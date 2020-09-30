import 'package:cloud_app/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class DateBox extends StatelessWidget {
  double height;
  double width;
  String text;

  DateBox({this.height, this.width , this.text});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          color: Color(0xff5B6ACD),
          shadowLightColorEmboss: Color(0xff383868).withOpacity(0.8),
          shadowDarkColorEmboss: Appcolor.top_color,
          depth: 5,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(40)),
          shadowLightColor: Color(0xff6F74C9).withOpacity(0.8),
          shape: NeumorphicShape.concave,
          intensity: 0.8),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 90),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
