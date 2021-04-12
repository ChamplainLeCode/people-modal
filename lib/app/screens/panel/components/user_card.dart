import 'package:flutter/material.dart';
import 'package:people_modal/app/utils/platform.dart';

class UserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      color: Colors.white70,
      margin: EdgeInsets.only(right: 30),
      child: Stack(
        children: [
          Positioned(
              right: 0,
              top: 0,
              child: Container(
                  width: 40,
                  height: 40,
                  child: TextButton(
                      child: Icon(
                        Icons.edit_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: () => null))),
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CircleAvatar(
                    radius: 60,
                    child: Image.network(
                        'https://avatars.githubusercontent.com/u/26502711?s=400&u=ae5e32fb5bc00ab15656885fa75a2710ff6def19&v=4'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Champlain Marius',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: !(PlatformControl.isWeb || PlatformControl.isDesktop) ? 14 : 20,
                        color: Colors.blueGrey[800]),
                  ),
                  SizedBox(height: 10),
                  Text('bncmarius@hotail.com',
                      style: TextStyle(
                          // fontWeight: FontWeight.w500,
                          fontSize: !(PlatformControl.isWeb || PlatformControl.isDesktop) ? 9 : 12,
                          color: Colors.blueGrey[200]))
                ],
              ))
        ],
      ),
    );
  }
}
