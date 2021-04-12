import 'package:flutter/material.dart';
import 'package:karee_core/karee_core.dart';
import 'package:people_modal/app/screens/panel/components/add_people_button.dart';
import 'package:people_modal/app/utils/platform.dart';

class DashBoardAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _DashBoardAppBarState createState() => _DashBoardAppBarState();

  @override
  @override
  Size get preferredSize => Size.fromHeight(PlatformControl.isWeb || PlatformControl.isDesktop ? 100 : 60);
}

class _DashBoardAppBarState extends State<DashBoardAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFF57657B)),
      padding: EdgeInsets.only(
          left: !(PlatformControl.isWeb || PlatformControl.isDesktop) ? 5 : 20, right: 20, top: 30, bottom: 20),
      child: Row(
        mainAxisAlignment: (PlatformControl.isWeb || PlatformControl.isDesktop)
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          if (!(PlatformControl.isWeb || PlatformControl.isDesktop))
            Container(
                width: 40,
                child: TextButton(
                  child: Icon(Icons.arrow_back_outlined, color: Colors.white),
                  onPressed: () => KareeRouter.goBack(),
                ))
          else if (!PlatformControl.isMinSize(context))
            AddPeopleButton(),
          RichText(
            text: TextSpan(
                style: TextStyle(fontSize: !(PlatformControl.isWeb || PlatformControl.isDesktop) ? 12 : 20),
                children: [
                  TextSpan(text: 'People ', style: TextStyle(fontWeight: FontWeight.w100)),
                  TextSpan(text: 'in ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white24)),
                  TextSpan(text: 'Twitter API Redesign 3.1 ', style: TextStyle(fontWeight: FontWeight.w400)),
                ]),
          ),
          if ((PlatformControl.isWeb || PlatformControl.isDesktop))
            TextButton(onPressed: () => KareeRouter.goBack(), child: Icon(Icons.close_rounded, color: Colors.white24))
        ],
      ),
    );
  }
}
