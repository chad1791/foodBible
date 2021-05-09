import 'package:flutter/material.dart';

ThemeData appTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1.copyWith(
        fontFamily: 'Amaranth',
        fontWeight: FontWeight.bold,
        color: Color(0xfff96d00),
        fontSize: 26,
      ),
      headline2: base.headline2.copyWith(
        fontFamily: 'Amaranth',
        color: Color(0xfff2f2f2),
        fontSize: 14,
      ),
      headline3: base.headline3.copyWith(
        fontFamily: 'Amaranth',
        fontSize: 14,
        color: Color(0xfff2f2f2),
      ),
      headline4: base.headline4.copyWith(
        fontFamily: 'Amaranth',
        fontSize: 16,
        color: Color(0xfff96d00),
        fontWeight: FontWeight.bold,
      ),
      headline5: base.headline5.copyWith(
        fontFamily: 'Amaranth',
        fontSize: 20,
        color: Color(0xfff96d00),
        fontWeight: FontWeight.bold,
      ),
      headline6: base.headline6.copyWith(
        fontFamily: 'Amaranth',
        fontSize: 14,
        color: Color(0xff393e46),
      ),
    );
  }

  final ThemeData base = ThemeData.light();

  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Color(0xff393e46),
    accentColor: Color(0xfff96d00),
    iconTheme: IconThemeData(
      color: Color(0xff222831),
    ),
  );
}
