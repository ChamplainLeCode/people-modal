import 'package:flutter/material.dart';

class ColorfulDot extends StatelessWidget {
  final Color? color;
  ColorfulDot({this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 30,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: color!, width: 3)),
              )
            ]));
  }
}
