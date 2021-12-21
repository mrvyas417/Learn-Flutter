// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learn/Screens/home.dart';
import 'package:flutter_learn/Screens/login_screen.dart';
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
      // home: Home(name),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => Home(name),
        "/login": (context) => Login(),
      },
    );
  }
}
