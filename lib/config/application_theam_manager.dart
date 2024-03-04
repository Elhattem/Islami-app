import 'package:flutter/material.dart';

class ApplactonTheamManager {
  static const Color primaryColor = Color(0xffB7935F);
  static const Color primaryDarkColor = Color(0xff141A2E);
  static const Color onprimaryDarkColor = Color(0xffFACC1D);
  static ThemeData lightTheam = ThemeData(
      primaryColor: primaryColor,
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          toolbarTextStyle: TextStyle(color: Colors.black),
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontFamily: "El Meseiri",
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontFamily: "El Meseiri",
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        bodyLarge: TextStyle(
          fontSize: 25,
          fontFamily: "El Meseiri",
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          fontFamily: "El Meseiri",
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          fontFamily: "El Meseiri",
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      dividerTheme: DividerThemeData(color: primaryColor),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff707070),
        selectedLabelStyle: TextStyle(
            fontFamily: "El Meseiri",
            fontSize: 18,
            fontWeight: FontWeight.normal),
        selectedIconTheme: IconThemeData(
          color: Color(0xff707070),
        ),
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
        unselectedLabelStyle: TextStyle(
            color: Colors.white,
            fontFamily: "El Meseiri",
            fontSize: 12,
            fontWeight: FontWeight.normal),
      ));
  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryDarkColor,
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          toolbarTextStyle: TextStyle(color: Colors.white),
          iconTheme: IconThemeData(color: Color(0xffFACC1D)),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontFamily: "El Meseiri",
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontFamily: "El Meseiri",
          fontWeight: FontWeight.w600,
          color: onprimaryDarkColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 25,
          fontFamily: "El Meseiri",
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          fontFamily: "El Meseiri",
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          fontFamily: "El Meseiri",
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
      dividerTheme: DividerThemeData(color: onprimaryDarkColor),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primaryDarkColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: onprimaryDarkColor,
        selectedLabelStyle: TextStyle(
            fontFamily: "El Meseiri",
            fontSize: 18,
            fontWeight: FontWeight.normal),
        selectedIconTheme: IconThemeData(
          color: onprimaryDarkColor,
        ),
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
        unselectedLabelStyle: TextStyle(
            color: Colors.white,
            fontFamily: "El Meseiri",
            fontSize: 12,
            fontWeight: FontWeight.normal),
      ));
} //background: #B7935F;
