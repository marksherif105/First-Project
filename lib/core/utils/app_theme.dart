import 'package:flutter/material.dart';

class AppTheme {
  get darktheme => null;

  get lighttheme => null;

  ThemeData lightTheme() {
    return ThemeData(brightness: Brightness.light);
  }

  ThemeData darkTheme() {
    return ThemeData(brightness: Brightness.dark);
  }
}
