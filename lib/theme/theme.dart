import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
      inputDecorationTheme: InputDecorationTheme(filled: true),
      primaryColor: HexColor("#009D4D"),
      indicatorColor: HexColor("#009D4D"),
      accentColor: HexColor("#009D4D"),
      appBarTheme: AppBarTheme(
        brightness: Brightness.light,
      ),
      backgroundColor: HexColor("#FFFFFF"),
      // accentColor: Color.fromARGB(1, 0, 39, 72),
      scaffoldBackgroundColor: HexColor("#FFFFFF"),
      canvasColor: HexColor("#FFFFFF"),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: HexColor("#009D4D")),
      buttonTheme: ButtonThemeData(
        buttonColor: HexColor("#009D4D"), //  <-- dark color
        textTheme:
            ButtonTextTheme.primary, //  <-- this auto selects the right color
      ));

  final darkTheme = ThemeData.dark().copyWith(
      inputDecorationTheme: InputDecorationTheme(filled: true),
      indicatorColor: HexColor("#009D4D"),
      primaryColor: HexColor("#009D4D"),
      accentColor: HexColor("#009D4D"),
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
      ),
      backgroundColor: HexColor("#021623"),
      // accentColor: Color.fromARGB(1, 0, 39, 72),
      scaffoldBackgroundColor: HexColor("#021623"),
      canvasColor: HexColor("#021623"),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: HexColor("#009D4D")),
      buttonTheme: ButtonThemeData(
        buttonColor: HexColor("#009D4D"), //  <-- dark color
        textTheme:
            ButtonTextTheme.primary, //  <-- this auto selects the right color
      ));
}
