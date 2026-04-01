import 'package:flutter/material.dart';

class EOutlinedButtonTheme {
  EOutlinedButtonTheme._();

  static OutlinedButtonThemeData lightOutlinedButtonTheme =OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color:Colors.blue),
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      textStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );

  static OutlinedButtonThemeData darkOutlinedButtonTheme =OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color:Colors.blue),
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      textStyle: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
}
