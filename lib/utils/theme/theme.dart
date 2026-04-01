import 'package:e_store/utils/theme/custom_theme/appbar_theme.dart';
import 'package:e_store/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:e_store/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:e_store/utils/theme/custom_theme/chip_theme.dart';
import 'package:e_store/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:e_store/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:e_store/utils/theme/custom_theme/text_field_theme.dart';
import 'package:e_store/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class EAppTheme {
  EAppTheme._(); //private constructor

  //Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily:'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: ETextTheme.lightTextTheme,
    chipTheme: EChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: EBottomSheet.lightBottomSheetTheme,
    checkboxTheme: ECheckBoxTheme.lightCheckBoxTheme,
    elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  //Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily:'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: ETextTheme.darkTextTheme,
    chipTheme: EChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: EAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: EBottomSheet.darkBottomSheetTheme,
    checkboxTheme: ECheckBoxTheme.darkCheckBoxTheme,
    elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
  
}
