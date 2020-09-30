import 'file:///D:/android%20projects/flutter_Sample_projects/flutter_sample/cloud_app/lib/Home/Home.dart';
import 'package:flutter/material.dart';




PageController pageController = PageController(initialPage: 0);
int currentIndex = 0;



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeNav(),
    );
  }
}


