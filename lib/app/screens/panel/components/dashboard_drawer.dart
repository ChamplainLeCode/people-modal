import 'package:flutter/material.dart';
import 'package:people_modal/app/utils/platform.dart';

import 'add_people_button.dart';
import 'drawer_item.dart';

class DashBoardDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Color(0xFF3C4151),
      child: Column(children: [
        Expanded(
            child: SingleChildScrollView(
                child: Column(children: [
          if (!(PlatformControl.isWeb || PlatformControl.isDesktop)) AddPeopleButton(),
          ListTile(
            title: Text('TEAM GROUPS',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: !(PlatformControl.isWeb || PlatformControl.isDesktop) ? 15 : 20,
                    color: Color(0xFF57657B))),
          ),
          DrawerItem(Colors.red, 'Develepers', '5 members', false),
          DrawerItem(Colors.purple, 'Manager', '2 members', true),
          DrawerItem(Colors.blue, 'Administrators', '5 members', true),
        ]))),
        Divider(
          height: 2,
        ),
        FittedBox(
            child: Text(
          'Rights for the rest of the team',
          style: TextStyle(color: Color(0xFF57657B), fontWeight: FontWeight.w200, fontSize: 16),
        )),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 25),
          decoration: BoxDecoration(color: Color(0xFF494F61), borderRadius: BorderRadius.circular(5)),
          height: 40,
          // width: 350,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'API is viewable',
                style: TextStyle(color: Colors.white54, fontWeight: FontWeight.w200, fontSize: 14),
              ),
              Container(),
              Container(
                  width: 30,
                  child: TextButton(
                      child: Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Color(0xFF57657B),
                      ),
                      onPressed: () => null))
            ],
          ),
        )
      ]),
    );
  }
}
