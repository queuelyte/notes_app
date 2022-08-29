import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeConstant {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: const Color(0xFFFFAE00),
    backgroundColor: Colors.white,
    textTheme: GoogleFonts.robotoTextTheme(),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: const Color(0xFFFFAE00),
    backgroundColor: Colors.black,
    textTheme: GoogleFonts.robotoTextTheme(),
  );
}
