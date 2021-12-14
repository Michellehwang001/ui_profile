import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.white,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
  );
}