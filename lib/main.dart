import 'package:flutter/material.dart';

import 'Screens/Login/Home/home_screen].dart';
import 'Screens/Login/login_screen.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animations",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
