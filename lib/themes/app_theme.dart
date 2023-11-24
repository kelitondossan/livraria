import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData customTheme = ThemeData(
  scaffoldBackgroundColor: Color.fromARGB(255, 48, 45, 45),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color.fromARGB(255, 245, 237, 237),
    elevation: 0,
    unselectedItemColor: Color.fromARGB(255, 7, 6, 6),
    selectedItemColor: Color.fromARGB(86, 2, 1, 1),
  ),
  primaryColor: const Color.fromARGB(255, 81, 161, 226),
  appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 100, 98, 98),
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: GoogleFonts.robotoMono(
        letterSpacing: 1.3,
        fontSize: 20,
        color: Color.fromARGB(255, 248, 247, 247),
        fontWeight: FontWeight.bold,
      ),
      actionsIconTheme: const IconThemeData(size: 30)),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: Colors.pink,
    linearTrackColor: const Color.fromARGB(255, 112, 71, 86),
  ),
  textTheme: TextTheme(
    titleSmall: GoogleFonts.robotoMono(
      fontSize: 14,
      color: Color.fromARGB(255, 245, 244, 244),
    ),
    titleMedium: GoogleFonts.robotoMono(
      fontSize: 18,
      color: Color.fromARGB(255, 241, 238, 238),
    ),
    titleLarge: GoogleFonts.robotoMono(
      fontSize: 22,
      color: Color.fromARGB(255, 233, 231, 231),
    ),
    labelSmall: GoogleFonts.gildaDisplay(fontSize: 22),
    labelMedium: GoogleFonts.gildaDisplay(fontSize: 26),
    labelLarge: GoogleFonts.gildaDisplay(fontSize: 30),
    bodySmall: GoogleFonts.gildaDisplay(fontSize: 22),
    bodyMedium: GoogleFonts.gildaDisplay(fontSize: 26),
    bodyLarge: GoogleFonts.gildaDisplay(fontSize: 30),
    headlineLarge: GoogleFonts.robotoMono(
        fontSize: 30,
        color: Color.fromARGB(255, 243, 242, 242),
        fontWeight: FontWeight.w700),
    headlineMedium: GoogleFonts.robotoMono(
        fontSize: 24,
        color: Color.fromARGB(255, 252, 250, 250),
        fontWeight: FontWeight.w700),
    headlineSmall: GoogleFonts.robotoMono(
        fontSize: 14,
        color: Color.fromARGB(230, 245, 242, 242),
        fontWeight: FontWeight.w700),
  ),
  iconTheme: const IconThemeData(color: Colors.pink),
  buttonTheme: const ButtonThemeData(buttonColor: Colors.pink),
);
