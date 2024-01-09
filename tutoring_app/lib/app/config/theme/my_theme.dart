import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutoring_app/app/config/theme/my_colors.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
      textTheme: GoogleFonts.openSansTextTheme(
        ThemeData.light().textTheme,
      ),
      primaryColor: MyColors.primary_500,
      brightness: Brightness.light,
      primaryColorDark: MyColors.primary_500.withOpacity(0.8),
      scaffoldBackgroundColor: Color.fromARGB(255, 211, 255, 226),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 163, 193, 170),
        elevation: 0,
        iconTheme: IconThemeData(color: MyColors.primary_500),
      ),
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
        buttonColor: MyColors.primary_500,
        disabledColor: MyColors.primary_500,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: MyColors.primary_500,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 187, 218, 161)))));
}
