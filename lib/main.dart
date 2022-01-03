// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learn/Screens/cart.dart';
import 'package:flutter_learn/Screens/home.dart';
import 'package:flutter_learn/Screens/login_screen.dart';
import 'package:flutter_learn/Widget/thems.dart';
import 'package:flutter_learn/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? name = "shubham ";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(name),

      themeMode: ThemeMode.light,
      theme: Mythem.lightThem(context),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => Login(),
        MyRoutes.homeRoute: (context) => Home(name),
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.cartRoutes: (context) => CartPage()
      },
    );
  }
}
