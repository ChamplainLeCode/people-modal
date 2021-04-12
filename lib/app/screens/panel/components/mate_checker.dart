import 'package:flutter/material.dart';

class MateChecker extends StatelessWidget {
  final bool? checked;
  MateChecker({this.checked});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            border: Border.all(color: (this.checked ?? false) ? Color(0xFF45A37D) : Colors.blueGrey, width: 2),
            shape: BoxShape.circle),
        child: (this.checked ?? false)
            ? Icon(
                Icons.check,
                color: Color(0xFF45A37D),
              )
            : null);
  }
}
