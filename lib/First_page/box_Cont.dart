import 'package:flutter/material.dart';
class BoxContainer extends StatelessWidget {
  String asset;
  String UText;
  String DText;
  double img_width;
  double img_height;


  BoxContainer({this.asset, this.UText, this.DText , this.img_width , this.img_height});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width= size.width;
    return Column(
      children: [
        Container(
          height: height * 0.095,
          width: width * 0.21,
          child: Center(
            child: Image.asset(
              asset,
              width: img_width,
              height: img_height,
            ),
          ),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color(0xff3C77F2)
                        .withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 15,
                    offset: Offset(0, 2))
              ],
              color: Color(0xffE1E3F1),
              borderRadius: BorderRadius.all(
                  Radius.circular(30))),
        ),
        SizedBox(height: 10),
        Text(
          UText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        Text(
    DText,
          style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
