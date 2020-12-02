
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class MyContainer extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onpress;

  MyContainer({this.color = Colors.black45, this.child,this.onpress});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onpress,
      child: Container(
        alignment: Alignment.center,
        child: child,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              25.0,
            ),
            color: color),
      ),
    );
  }
}