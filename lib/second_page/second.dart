import 'package:cloud_app/First_page/box_Cont.dart';
import 'file:///D:/android%20projects/flutter_Sample_projects/flutter_sample/cloud_app/lib/Home/custom_bottom_page.dart';
import 'package:cloud_app/const/color.dart';
import 'package:cloud_app/second_page/BottomLayer.dart';
import 'file:///D:/android%20projects/flutter_Sample_projects/flutter_sample/cloud_app/lib/First_page/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
        backgroundColor: Appcolor.background,
        body: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              Positioned(
                top: 25,
                child: TopClipper(colorr: Appcolor.bottom),
              ),

              Positioned(
                top: height * 0.08,
                left: width * 0.40,
                child: Neumorphic(
                  child: Container(
                    height: height*0.07,
                    width: width*0.2,
                    child: Center(
                        child:Icon(
                          Icons.person,
                          color: Appcolor.top_color,
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
                  top: height * 0.2,
                  child: Column(children: [
                    Container(
                        height: height * 0.18,
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
                                    asset: "assets/archive.png",
                                    UText: "Archive",
                                    img_height: 100.0,
                                    img_width: 100.0,
                                    DText: ".zip",
                                  ),
                                  BoxContainer(
                                    asset: "assets/illustration.png",
                                    img_height: 100.0,
                                    img_width: 100.0,
                                    UText: "Illustration",
                                    DText: ".eps",
                                  ),
                                  BoxContainer(
                                    asset: "assets/artwork.png",
                                    UText: "Artwork",
                                    img_height: 100.0,
                                    img_width: 100.0,
                                    DText: ".psd",
                                  ),
                                ]))),

                    ///////////container2
                    Container(
                        height: height * 0.18,
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
                                    asset: "assets/site.png",
                                    UText: "Site",
                                    DText: ".link",
                                  ),
                                  BoxContainer(
                                    asset: "assets/filetype.png",
                                    UText: "Filetype",
                                    DText: ".unknown",
                                  ),
                                  BoxContainer(
                                    asset: "assets/app.png",
                                    UText: "App",
                                    DText: ".xcode",
                                  ),
                                ])))
                  ])),
              Positioned(
                bottom: 0,
                child: BottomLayer(),
              )
            ],
          ),
        ));
  }
}
