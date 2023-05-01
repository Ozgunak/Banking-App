import 'package:flutter/material.dart';
import 'package:finance/helpers/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        cardColor: Color(0xFF424242),
      ),
      initialRoute: '/',
      routes: routes,
    );
  }
}
