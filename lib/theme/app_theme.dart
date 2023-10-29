import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get theme => ThemeData(
        primaryColor: const Color(0xFF202053),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w500,
            // color: Colors.white,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF202053),
        ),
        textTheme: textTheme,
      );

  static TextTheme get textTheme => const TextTheme(
        bodySmall: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        // subtitle1
        titleMedium: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        // bodyText1
        bodyLarge: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        // bodyText2
        bodyMedium: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        // headline6
        titleLarge: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 28,
          fontWeight: FontWeight.w500,
        ),

        headlineLarge: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
        // headline3
        displaySmall: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
        // headline2
        displayMedium: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 36,
          fontWeight: FontWeight.w500,
        ),
        // headline1
        displayLarge: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 40,
          fontWeight: FontWeight.w500,
        ),
      );
}
