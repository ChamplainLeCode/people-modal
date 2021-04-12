import 'package:flutter/material.dart';
import 'package:people_modal/app/screens/panel/components/colorful_dot.dart';
import 'package:people_modal/app/screens/panel/components/mate_checker.dart';

class DrawerItem extends StatefulWidget {
  final Color color;
  final String title, subTitle;
  final bool checked;

  DrawerItem(this.color, this.title, this.subTitle, this.checked);
  @override
  _DrawerItemState createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ColorfulDot(color: widget.color),
      title: Container(
        child: Text(
          widget.title,
          style: TextStyle(color: Colors.white70),
        ),
      ),
      subtitle: Text(
        widget.subTitle,
        style: TextStyle(color: Color(0xFF57657B), fontWeight: FontWeight.w400),
      ),
      visualDensity: VisualDensity.standard,
      trailing: MateChecker(
        checked: widget.checked,
      ),
    );
  }
}
