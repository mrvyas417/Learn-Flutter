// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mythem {
  static ThemeData lightThem(BuildContext context) => ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.blueGrey,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );
  static ThemeData dark(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
