import 'package:flutter/material.dart';

class UserGroupCard extends StatelessWidget {
  final Color? color;
  final String? title, subtitle;

  UserGroupCard({this.color, this.subtitle, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(right: 30),
      padding: EdgeInsets.only(left: 20, top: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.only(
          //   topRight: Radius.circular(5),
          //   bottomRight: Radius.circular(5),
          // ),
          color: Colors.white54,
          border: Border(left: BorderSide(color: this.color!, width: 6))),
      width: 200,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 25,
                  child: Text(
                    this.title!,
                    style: TextStyle(color: this.color, fontWeight: FontWeight.bold),
                  )),
              Text(
                this.subtitle!,
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w200),
              )
            ],
          )),
          Icon(Icons.edit_outlined)
        ],
      ),
    );
  }
}
