import 'package:cloud_app/clip_shadow_path.dart';
import 'package:cloud_app/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'custom_nav_item.dart';

class CustomBottomPage extends StatefulWidget {
  @override
  _CustomBottomState createState() => _CustomBottomState();
}

class _CustomBottomState extends State<CustomBottomPage> {
  setPage() {
    setState(() {
      pageController.jumpToPage(currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final height = size.height;

    return ClipShadowPath(
      shadow: BoxShadow(
          color: Colors.transparent,
          offset: Offset(5, 3),
          blurRadius: 5,
          spreadRadius: 10),
      child: Container(
        height: height * 0.1,
        color: currentIndex == 0 ? Appcolor.bottom : Appcolor.top_color,
        child: Stack(
          children: [
            Positioned(
              bottom: 20,
              left: 40,
              right: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomNavItem(setPage: setPage, icon: Icons.home, id: 0),
                  CustomNavItem(
                      setPage: setPage,
                      icon: Icons.arrow_drop_down_circle,
                      id: 1),
                ],
              ),
            )
          ],
        ),
      ),
      clipper: CustomClipperr(),
    );
  }
}

class CustomClipperr extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var h = size.height;
    var w = size.width;
    Path path = Path();
    path.moveTo(0, h * 0.35);

    // Start
    path.quadraticBezierTo(20, 0, 60, 0);
    path.lineTo(size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.65, 15),
        radius: Radius.circular(18.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.65, 0, size.width * 0.70, 0);
    path.lineTo(size.width * 0.82, 0);
    path.quadraticBezierTo(size.width * 0.95, 0, size.width, h * 0.35);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    path.close();

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
