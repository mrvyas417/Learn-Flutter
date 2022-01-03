// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learn/Screens/cart.dart';
import 'package:flutter_learn/Screens/home.dart';
import 'package:flutter_learn/Screens/login_screen.dart';
import 'package:flutter_learn/Widget/thems.dart';
import 'package:flutter_learn/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => Login(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.cartRoutes: (context) => CartPage(),
      },
    );
  }
}
