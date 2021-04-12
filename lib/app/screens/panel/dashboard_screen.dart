import 'package:flutter/material.dart';
import 'package:people_modal/app/screens/panel/components/dashboard_app_bar.dart';
import 'package:people_modal/app/screens/panel/components/dashboard_body.dart';
import 'package:people_modal/app/screens/panel/components/dashboard_drawer.dart';
import 'package:people_modal/core/core.dart' show Screen;

/// Generated Karee Screen
/// @email champlainmarius20@gmail.com
/// @github ChamplainLeCode
///
///
///
/// `DashboardScreen` is set as Screen with name `dashboard`
@Screen("dashboard")
class DashboardScreen extends StatefulWidget {
  _DashboardState createState() => new _DashboardState();
}

class _DashboardState extends State<DashboardScreen> {
  void initState() {
    // Add your initialize code here
    super.initState();
  }

  void dispose() {
    // add your custom code for disposing all objects
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECEFF4),
      appBar: DashBoardAppBar(),
      body: DashBoardBody(),
      drawer: DashBoardDrawer(),
    );
  }
}
