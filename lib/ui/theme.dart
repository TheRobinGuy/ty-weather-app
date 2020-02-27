import 'package:flutter/material.dart';

ThemeData buildTheme() {
  TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      headline: base.headline.copyWith(
        fontFamily: 'Roboto',
        fontSize: 50.0,
        color: const Color(0xFFFFFFFF),
      ),
      title: base.title.copyWith(
        fontFamily: 'Roboto',
        fontSize: 30.0,
        color: const Color(0xFFFFFFFF),
      ),
      caption: base.caption.copyWith(
        color: const Color(0xFFFFFFFF),
        fontSize: 20.0
      ),
    );
  }

  final ThemeData base = ThemeData.light();

  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
    primaryColor: const Color(0xFF00796B),
    indicatorColor: const Color(0xFFFFFFFF),
    scaffoldBackgroundColor: const Color(0xFF009688),
    accentColor: const Color(0xFFFFFFFF),
    iconTheme: IconThemeData(
      color: const Color(0xFFFFFFFF),
      size: 20.0,
    ),
    buttonColor: Colors.white,
  );
}
