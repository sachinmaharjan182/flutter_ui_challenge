import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/screens/home_screen.dart';
import 'package:flutter_ui_challenge/screens/profile_screen.dart';

import 'configs/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
      routes: myRoutes,
    );
  }
}



