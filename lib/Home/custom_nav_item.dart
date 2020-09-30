import 'package:flutter/material.dart';
import '../main.dart';

class CustomNavItem extends StatelessWidget {
  final IconData icon;
  final int id;
  final Function setPage;

  const CustomNavItem({this.setPage, this.icon, this.id});

  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        currentIndex = id;
        setPage();
      },
      child: Icon(
        icon,
        color: Colors.white,
        size: 35,
      ),
    );
  }
}
