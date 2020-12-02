import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ColumCinsiyetVeText extends StatelessWidget {
  final IconData iconun;
  final Color color;
  final String cinsiyet;
  ColumCinsiyetVeText(
      {this.iconun = FontAwesomeIcons.font,
        this.color = Colors.red,
        this.cinsiyet = 'Belirtilmedi'});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconun,
          size: 40,
          color: color,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$cinsiyet",
          style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.white),
        )
      ],
    );
  }
}