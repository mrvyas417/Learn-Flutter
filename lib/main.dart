// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learn/Screens/cart.dart';
import 'package:flutter_learn/Screens/home.dart';
import 'package:flutter_learn/Screens/login_screen.dart';
import 'package:flutter_learn/Widget/thems.dart';
import 'package:flutter_learn/core/store.dart';
import 'package:flutter_learn/utils/routes.dart';

import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
