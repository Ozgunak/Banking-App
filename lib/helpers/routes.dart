import 'package:flutter/material.dart';
import 'package:finance/screens/dashboard_screen.dart';
// import 'package:banking_app/screens/transfer_screen.dart';
// import 'package:banking_app/screens/profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => DashboardScreen(),
  // '/transfer': (context) => TransferScreen(),
  // '/profile': (context) => ProfileScreen(),
};
