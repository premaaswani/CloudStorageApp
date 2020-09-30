
import 'package:cloud_app/bottom_nav/wave_clipper.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../Home/custom_nav_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  setPage() {
    setState(() {
      pageController.jumpToPage(currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Material(
        color: Colors.transparent,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: currentIndex==1?Colors.red:Colors.yellow


//                    gradient: LinearGradient(
//                      begin: Alignment.topCenter,
//                      end: Alignment.bottomCenter,
//                      colors: [
//                        Theme.of(context).primaryColor.withAlpha(150),
//                        Theme.of(context).primaryColor,
//                      ],
//                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 45,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CustomNavItem(
                      setPage: setPage, icon: Icons.bubble_chart, id: 0),
                  Container(),
                  CustomNavItem(setPage: setPage, icon: Icons.landscape, id: 1),
                  Container(),
                  CustomNavItem(
                      setPage: setPage, icon: Icons.brightness_3, id: 2),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Focus',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(),
                  Text(
                    'Relax',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(),
                  Text(
                    'Sleep',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
