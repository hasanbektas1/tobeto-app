import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:tobeto_app/theme/tobeto_theme_color.dart';

class TobetoAppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        colorScheme: TobetoAppColor.colorSchemeLight,
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          // size = 16
          bodyLarge: GoogleFonts.poppins(
            color: TobetoAppColor.backgroundDark,
          ),
          // default text theme size = 14
          bodyMedium: TextStyle(
            color: TobetoAppColor.textColorBlack,
            fontWeight: FontWeight.bold,
          ),
          // size=12
          bodySmall: TextStyle(
            color: TobetoAppColor.textColorBlack,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: TobetoAppColor.textColor,
          suffixIconColor: TobetoAppColor.textColor,
          labelStyle: TextStyle(
            color: TobetoAppColor.textColor,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              backgroundColor: TobetoAppColor.colorSchemeLight.primary,
              fixedSize: const Size(350, 45),
              foregroundColor: TobetoAppColor.textColorDark),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: TobetoAppColor.textColorBlack,
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
              )),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
              foregroundColor: TobetoAppColor.textColor, iconSize: 25),
        ),
        iconTheme: IconThemeData(color: TobetoAppColor.textColor, size: 30));
  }

  static ThemeData darkTheme() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: TobetoAppColor.backgroundDark,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      colorScheme: TobetoAppColor.colorSchemeDark,
      textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          labelLarge: GoogleFonts.poppins(
              color: TobetoAppColor.textColor, fontWeight: FontWeight.bold),
          displayLarge: TextStyle(color: TobetoAppColor.textColor),
          bodyMedium: TextStyle(
              color: TobetoAppColor.textColor, fontWeight: FontWeight.bold)),
      inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: TobetoAppColor.textColor,
        suffixIconColor: TobetoAppColor.textColor,
        labelStyle: TextStyle(
          color: TobetoAppColor.textColor,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: TobetoAppColor.colorSchemeLight.primary,
            fixedSize: const Size(350, 45),
            foregroundColor: TobetoAppColor.textColorDark),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: TobetoAppColor.textColor),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
            foregroundColor: TobetoAppColor.textColor, iconSize: 30),
      ),
    );
  }
}