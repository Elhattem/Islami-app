import 'package:flutter/material.dart';

class ApplactonTheamManager {
  static const Color primaryColor = Color(0xffB7935F);
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
} //background: #B7935F;
