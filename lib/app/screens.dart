import 'package:people_modal/app/screens/panel/dashboard_screen.dart';
import 'package:people_modal/app/screens/home_screen.dart';

/*
 *	
@Author Champlain Marius Bakop
@Email champlainmarius20@gmail.com
@github ChamplainLeCode */


List<Map<Symbol, dynamic>> screens = [

	{#name: 'home', #screen: () => HomeScreen(), #initial: true},
	{#name: 'dashboard', #screen: () => DashboardScreen()},

];