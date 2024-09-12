import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme customTextTheme() {
  return TextTheme(
    displayLarge: GoogleFonts.gothicA1(
        fontSize: 94,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: Colors.white),
    displayMedium: GoogleFonts.jua(
        fontSize: 22,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: Colors.white),
    displaySmall: GoogleFonts.jua(
        fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
    headlineLarge: GoogleFonts.gothicA1(
        fontSize: 40,
        fontWeight: FontWeight.w400,
        color: Colors.white),
    headlineMedium: GoogleFonts.gothicA1(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: Colors.white),
    headlineSmall: GoogleFonts.gothicA1(
        fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white),
    titleLarge: GoogleFonts.nanumGothic(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white),
    titleMedium: GoogleFonts.gothicA1(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white),
    titleSmall: GoogleFonts.gothicA1(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white),
    bodyLarge: GoogleFonts.gothicA1(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.white),
    bodyMedium: GoogleFonts.gothicA1(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.white),
    bodySmall: GoogleFonts.gothicA1(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.white),
    labelLarge: GoogleFonts.nanumGothic(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white),
    labelMedium: GoogleFonts.gothicA1(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white),
    labelSmall: GoogleFonts.gothicA1(
        fontSize: 8,
        fontWeight: FontWeight.w400,
        color: Colors.white),
  );
}
