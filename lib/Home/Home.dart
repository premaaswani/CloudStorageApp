import 'file:///D:/android%20projects/flutter_Sample_projects/flutter_sample/cloud_app/lib/Home/custom_bottom_page.dart';
import 'file:///D:/android%20projects/flutter_Sample_projects/flutter_sample/cloud_app/lib/second_page/second.dart';
import 'package:cloud_app/bottom_nav/third.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../First_page/first_screen.dart';
import '../bottom_nav/custom_bottom_navigation_bar.dart';

class HomeNav extends StatefulWidget {
  @override
  _HomeNavState createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  setPage() {
    setState(() {
      pageController.jumpToPage(currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      extendBody: true,
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: <Widget>[
          FirstScreen(),
          SecondScreen(),
        ],
      ),
      bottomNavigationBar: CustomBottomPage(),
    );
  }
}
