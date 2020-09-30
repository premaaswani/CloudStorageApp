import 'package:cloud_app/clip_shadow_path.dart';
import 'package:cloud_app/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TopClipper extends StatelessWidget {
  Color colorr;


  TopClipper({this.colorr}); //  final top_height;
//
//
//  TopClipper({this.top_height});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ClipShadowPath(
      shadow: BoxShadow(
          color: Color(0xff131398).withOpacity(0.2),
          offset: Offset(0, 3),
          blurRadius: 10,
          spreadRadius: 0),
      child: Container(
        height: height*0.5,
        width: width,
        decoration: BoxDecoration(color: colorr),
        child: Stack(
          children: [
            Positioned(
              top:15,

              left: 30,
              right: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cloud,
                    size: 30,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      clipper: MyClipper(),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var sw = size.width;
    var sh = size.height;

    var path = new Path();
    path.lineTo(0.0, sh * 0.20);

    var controlPoint1 = new Offset(10, sh * 0.17);
    var endPoint1 = new Offset(40, sh * 0.17);
    path.quadraticBezierTo(
        controlPoint1.dx, controlPoint1.dy, endPoint1.dx, endPoint1.dy);

    path.lineTo(sw / 3, sh * 0.17);

//        var firstcontrol  = new Offset(, dy)
    var controlPoint = new Offset(sw / 2, -sh * 0.17 / 2.3);
    var endPoint = new Offset(sw / 1.5, sh * 0.17);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(sw - 38, sh * 0.17);

    var controlPoint2 = new Offset(sw - 10, sh * 0.17);
    var endPoint2 = new Offset(sw, sh * 0.134);
    path.quadraticBezierTo(
        controlPoint2.dx, controlPoint2.dy, endPoint2.dx, endPoint2.dy);

    path.lineTo(sw, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
