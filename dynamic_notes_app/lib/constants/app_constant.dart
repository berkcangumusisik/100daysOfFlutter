import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Consts {
  static const MaterialColor primaryColor = Colors.deepOrange;
  static const String appTitle = 'Ortalama Hesaplayıcı';
  static final TextStyle headingStyle = GoogleFonts.quicksand(
    fontSize: 18,
    fontWeight: FontWeight.w900,
    color: primaryColor,
  );
  static BorderRadius borderRadius = BorderRadius.circular(24);
  static final TextStyle lessonNumberStyle = GoogleFonts.quicksand(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color:primaryColor,
  );

  static final TextStyle averageStyle = GoogleFonts.quicksand(
    fontSize: 36,
    fontWeight: FontWeight.w900,
    color: primaryColor,
  );

  static final EdgeInsets padding = EdgeInsets.symmetric(horizontal: 16, vertical: 8);
}
