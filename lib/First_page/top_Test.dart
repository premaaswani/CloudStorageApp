import 'package:cloud_app/clip_shadow_path.dart';
import 'package:cloud_app/const/color.dart';
import 'file:///D:/android%20projects/flutter_Sample_projects/flutter_sample/cloud_app/lib/First_page/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopTest extends StatefulWidget {
  @override
  _TopTestState createState() => _TopTestState();
}

class _TopTestState extends State<TopTest> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final hg = size.height;
    final wd = size.width;
    return ClipShadowPath(
      shadow: BoxShadow(
          color: Color(0xff131398).withOpacity(0.7),
          offset: Offset(-20, 1),
          blurRadius: 15,
          spreadRadius: 30),
      clipper: MyClipper(),
      child: Container(
        height: hg * 0.45,
        width: wd,
        decoration: BoxDecoration(gradient: Appcolor.linearGradient2),
        child: Stack(
          children: [
            TopClipper(colorr: Appcolor.top_color),
            Positioned(
              left: wd / 2.4,
              top: hg * 0.03,
              child: Neumorphic(
                child: Container(
                  height: 60,
                  width: 60,
                  child: Center(
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                style: NeumorphicStyle(
                    color: Appcolor.top_color,
                    shadowLightColorEmboss: Color(0xff383868).withOpacity(0.8),
                    shadowDarkColorEmboss: Colors.black,
                    depth: 20,
                    boxShape: NeumorphicBoxShape.circle(),
                    shadowLightColor: Color(0xff383868).withOpacity(0.8),
                    shape: NeumorphicShape.flat,
                    intensity: 0.7),
              ),
            ),
            Positioned(
                left: 30,
                right: 30,
                top: hg * 0.12,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      depth: -10,
                      shadowLightColorEmboss:
                          Color(0xff383868).withOpacity(0.3),
                      shadowDarkColorEmboss: Colors.black,
                      color: Appcolor.top_color,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20))),
                  child: Container(
                    height: hg * 0.05,
                    width: wd,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Search...",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                )),
            Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: hg * 0.2,
                  width: wd * 0.24,
                  decoration: BoxDecoration(
                    color: Appcolor.top_color,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Container(
                          height: hg * 0.08,
                          width: wd * 0.15,
                          decoration: BoxDecoration(
                              color: Appcolor.clip_ccolor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
                left: wd * 0.09,
                bottom: 0,
                child: Container(
                  height: hg * 0.25,
                  width: wd * 0.6,
                  decoration: BoxDecoration(
                      gradient: Appcolor.linearGradient,
                      border: Border.all(
                          color: Color(0xff3C77F2).withOpacity(0.5), width: 3),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(80)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff3C77F2).withOpacity(0.2),
                            spreadRadius: 8,
                            blurRadius: 8,
                            offset: Offset(0, 2))
                      ]),
                  child: Stack(
                    children: [
                      Positioned(
                          top: hg * 0.02,
                          right: wd * 0.08,
                          child: Column(
                            children: [
                              Text(
                                "MyDocs",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text("3248files ,26flolders ",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13))
                            ],
                          )),












                      Positioned(
                      top:hg*0.14,
                          right: wd * 0.08,
                          child: Column(
                            children: [
                              Text(
                                "No Space",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),










                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          height: hg * 0.08,
                          width: wd * 0.15,
                          decoration: BoxDecoration(
                              color: Appcolor.top_color,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            "assets/file.png",
                          ),
                        ),
                      ),
                      Center(
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              depth: -10,
                              shadowLightColorEmboss:
                                  Color(0xff383868).withOpacity(0.3),
                              shadowDarkColorEmboss: Colors.black,
                              color: Appcolor.top_color,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(20))),
                          child: Container(
                              height: 10, width: 200, color: Color(0xff3C77F2)),
                        ),
                      ),

                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          height: hg * 0.08,
                          width: wd * 0.15,
                          decoration: BoxDecoration(
                              color: Appcolor.top_color,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            "assets/file.png",
                          ),
                        ),
                      ),



                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

//clipper

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var wc = size.width;
    var hc = size.height;
    Path path = new Path();

    path.lineTo(0.0, hc * 0.72);
    var controlPoint = new Offset(30, hc * 0.85);
    var endPoint = new Offset(80, hc * 0.85);

    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width - 95, hc * 0.85);
    var controlPoint2 = new Offset(wc, hc * 0.87);
    var endPoint2 = new Offset(wc, hc);
    path.quadraticBezierTo(
        controlPoint2.dx, controlPoint2.dy, endPoint2.dx, endPoint2.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
