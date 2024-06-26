import 'package:flutter/material.dart';

import '../../model/utils/colors.dart';

ThemeData light = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepPurple,
    iconTheme: IconThemeData(color: Colors.black,)
  ),
  fontFamily: 'Inter',
  primaryColor: Colors.black,
  secondaryHeaderColor: const Color(0xFF1ED7AA),
  disabledColor: const Color(0xFFBABFC4),
  backgroundColor: const Color(0xFFF8F8FA),
  scaffoldBackgroundColor: backgroundColor,
  errorColor: const Color(0xFFE84D4F),
  brightness: Brightness.light,
  hintColor: const Color(0xFF9F9F9F),
  cardColor: Colors.white,
  colorScheme: const ColorScheme.light(primary: Colors.black, secondary: Colors.black),
  textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: const Color(0X99FFBB01))),
);
//0xFFBABFC4