import 'package:cloud_app/First_page/box_Cont.dart';
import 'package:cloud_app/const/color.dart';
import 'file:///D:/android%20projects/flutter_Sample_projects/flutter_sample/cloud_app/lib/First_page/top_Test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Appcolor.background,
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Positioned(top: height * 0.03, child: TopTest()),
              Positioned(
                bottom: height * 0.06,
                left: width / 2.34,
                child: Neumorphic(
                  child: Container(
                    height: height*0.1,
                    width: width*0.2,
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/arrow.svg",
                        color: Appcolor.top_color,
                        width: width*0.1,
                        height: height*0.045,
                      )
                    ),
                  ),
                  style: NeumorphicStyle(
                      color:Color(0xffD2D6ED),
                      shadowLightColorEmboss:
                          Color(0xff383868).withOpacity(0.8),
                      shadowDarkColorEmboss: Colors.black26,
                      depth: 20,
                      boxShape: NeumorphicBoxShape.circle(),
                      shadowLightColor: Colors.white,
                      shadowDarkColor: Colors.white,
                      shape: NeumorphicShape.convex,
                      intensity: 0.7),
                ),
              ),
              Positioned(
                  top: height * 0.44,
                  left: 20,
                  right: 20,
                  child: Column(children: [
                    Container(
                        height: height * 0.2,
                        width: width,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  BoxContainer(
                                    asset: "assets/asset1.png",
                                    UText: "Assets",
                                    img_height: 60.0,
                                    img_width: 60.0,
                                    DText: ".folder",
                                  ),
                                  BoxContainer(
                                    asset: "assets/asset1.png",
                                    img_height: 60.0,
                                    img_width: 60.0,
                                    UText: "Stuff",
                                    DText: ".folder",
                                  ),
                                  BoxContainer(
                                    asset: "assets/mountain.png",
                                    UText: "Mountain",
                                    img_height: 100.0,
                                    img_width: 100.0,
                                    DText: ".jpeg",
                                  ),
                                ]))),

                    ///////////container2
                    Container(
                        height: height * 0.2,
                        width: width,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  BoxContainer(
                                    asset: "assets/record.png",
                                    UText: "Recore",
                                    DText: ".mp3",
                                  ),
                                  BoxContainer(
                                    asset: "assets/result.png",
                                    UText: "Results",
                                    DText: ".xls",
                                  ),
                                  BoxContainer(
                                    asset: "assets/text.png",
                                    UText: "Project",
                                    DText: ".docs",
                                  ),
                                ])))
                  ]))
            ])));
  }
}
