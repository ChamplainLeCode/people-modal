import 'package:flutter/material.dart';
import 'package:people_modal/app/screens/panel/components/dashboard_drawer.dart';
import 'package:people_modal/app/screens/panel/components/user_card.dart';
import 'package:people_modal/app/screens/panel/components/user_group_card.dart';
import 'package:people_modal/app/utils/platform.dart';

class DashBoardBody extends StatefulWidget {
  @override
  _DashBoardBodyState createState() => _DashBoardBodyState();
}

class _DashBoardBodyState extends State<DashBoardBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            if ((PlatformControl.isWeb || PlatformControl.isDesktop) &&
                !PlatformControl.isMinSize(context))
              DashBoardDrawer(),
            Expanded(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: !(PlatformControl.isWeb ||
                                  PlatformControl.isDesktop)
                              ? 50
                              : 90,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              (PlatformControl.isWeb ||
                                          PlatformControl.isDesktop) &&
                                      PlatformControl.isMinSize(context)
                                  ? TextButton(
                                      child: Icon(Icons.menu),
                                      onPressed: () => null)
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            width: !(PlatformControl.isWeb ||
                                                    PlatformControl.isDesktop)
                                                ? 80
                                                : 100,
                                            child: TextButton(
                                                onPressed: () => null,
                                                child: Text(
                                                  'All',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ))),
                                        Container(
                                          width: !(PlatformControl.isWeb ||
                                                  PlatformControl.isDesktop)
                                              ? 80
                                              : 100,
                                          child: Text('Editors',
                                              style: TextStyle(
                                                  color: Color(0xFF79A4FF),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Container(
                                          width: !(PlatformControl.isWeb ||
                                                  PlatformControl.isDesktop)
                                              ? 80
                                              : 100,
                                          child: Text('Viewers',
                                              style: TextStyle(
                                                  color: Color(0xFF79A4FF),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                        )
                                      ],
                                    ),
                              TextButton(
                                onPressed: () => null,
                                child: Icon(
                                  Icons.search,
                                ),
                                style: ButtonStyle(
                                    textStyle:
                                        MaterialStateProperty.all(TextStyle(
                                  color: Colors.grey,
                                ))),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Padding(
                          padding: EdgeInsets.all(!(PlatformControl.isWeb ||
                                  PlatformControl.isDesktop)
                              ? 5
                              : 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text(
                                    'Groups',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.blueGrey[300]),
                                  ),
                                  alignment: Alignment.centerLeft),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  width: MediaQuery.of(context).size.width -
                                      (!(PlatformControl.isWeb ||
                                              PlatformControl.isDesktop)
                                          ? 15
                                          : 20),
                                  margin: EdgeInsets.only(bottom: 50),
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      reverse: true,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          UserGroupCard(
                                              color: Colors.deepPurple,
                                              title: 'Administrator',
                                              subtitle: '2 members'),
                                          UserGroupCard(
                                              color: Colors.purple,
                                              title: 'Managers',
                                              subtitle: '2 members'),
                                        ],
                                      ))),
                              Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text(
                                    'People',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.blueGrey[300]),
                                  ),
                                  alignment: Alignment.centerLeft),
                              Container(
                                  margin: EdgeInsets.only(bottom: 50),
                                  alignment: Alignment.centerLeft,
                                  width: MediaQuery.of(context).size.width -
                                      (!(PlatformControl.isWeb ||
                                              PlatformControl.isDesktop)
                                          ? 15
                                          : 20),
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      reverse: true,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [UserCard(), UserCard()],
                                      )))
                            ],
                          ),
                        )))
                      ],
                    )))
          ],
        ));
  }
}
