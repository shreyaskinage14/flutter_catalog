import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        cardColor: Colors.white,
        canvasColor: creamColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        buttonColor: darkBluishColor,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: const IconThemeData(color: Colors.black),
            toolbarTextStyle: Theme.of(context).textTheme.bodyMedium,
            titleTextStyle: Theme.of(context).textTheme.titleLarge),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)
            .copyWith(secondary: darkBluishColor),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        buttonColor: lighBluishColor,
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: const IconThemeData(color: Colors.white),
            toolbarTextStyle: Theme.of(context).textTheme.bodyMedium,
            titleTextStyle: Theme.of(context).textTheme.titleLarge),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ).copyWith(secondary: Colors.white, brightness: Brightness.dark),
      );

  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lighBluishColor = Vx.indigo500;
}
