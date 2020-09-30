import 'package:cloud_app/const/color.dart';
import 'package:cloud_app/second_page/date_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import '../clip_shadow_path.dart';

class BottomLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return ClipShadowPath(
      shadow: BoxShadow(
          color: Color(0xff131398).withOpacity(0.7),
          offset: Offset(-20, 10),
          blurRadius: 15,
          spreadRadius: 30),
      child: Container(
        height: height * 0.5,
        width: width,
        color: Appcolor.clip_ccolor,
        child: Stack(
          children: [
            Positioned(
              bottom: height * 0.06,
              left: width / 2.34,
              child: Neumorphic(
                child: Container(
                  height: height * 0.1,
                  width: width * 0.2,
                  child: Center(
                      child: SvgPicture.asset(
                    "assets/arrow.svg",
                    color: Appcolor.progress,
                    width: width * 0.1,
                    height: height * 0.045,
                  )),
                ),
                style: NeumorphicStyle(
                    color: Appcolor.top_color,
                    shadowLightColorEmboss: Color(0xff383868).withOpacity(0.8),
                    shadowDarkColorEmboss: Colors.black26,
                    depth: 10,
                    boxShape: NeumorphicBoxShape.circle(),
                    shadowLightColor: Appcolor.progress,
                    shadowDarkColor: Colors.deepPurple,
                    shape: NeumorphicShape.convex,
                    intensity: 0.4),
              ),
            ),
            Positioned(
              top: 0,
              left: 50,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DateBox(
                      height: height * 0.29, width: width * 0.15, text: "15"),
                  DateBox(
                    height: height * 0.20,
                    width: width * 0.15,
                    text: "14",
                  ),
                  DateBox(
                    height: height * 0.20,
                    width: width * 0.15,
                    text: "13",
                  ),
                  DateBox(
                    height: height * 0.20,
                    width: width * 0.15,
                    text: "12",
                  ),
                  DateBox(
                    height: height * 0.20,
                    width: width * 0.15,
                    text: "11",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      clipper: BottomClipper(),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var h = size.height;
    var w = size.width;
    Path path = new Path();
    path.moveTo(0, 0);
    var controlPoint1 = new Offset(10, h * 0.2);
    var endPoint1 = new Offset(w / 2, h * 0.23);
    path.quadraticBezierTo(
        controlPoint1.dx, controlPoint1.dy, endPoint1.dx, endPoint1.dy);

    var controlPoint2 = new Offset(w - 20, h * 0.25);
    var endPoint2 = new Offset(w, h * 0.35);
    path.quadraticBezierTo(
        controlPoint2.dx, controlPoint2.dy, endPoint2.dx, endPoint2.dy);

    path.lineTo(w, h);
    path.lineTo(0, h);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
