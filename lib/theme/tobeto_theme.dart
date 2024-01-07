import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:tobeto_app/theme/tobeto_theme_color.dart';

class TobetoAppTheme {
  //Light Theme
  static ThemeData lightTheme() {
    return ThemeData(
        useMaterial3: true,
        colorScheme: TobetoAppColor.colorSchemeLight,
        scaffoldBackgroundColor: TobetoAppColor.backgroundLight,
        //Appbar Control

        appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            color: TobetoAppColor.colorSchemeLight.primary,
            titleTextStyle:
                TextStyle(color: TobetoAppColor.textColorDark, fontSize: 20)),

        // showModalBottomSheet => Üst köşelerin düz olması saglandı
        bottomSheetTheme: const BottomSheetThemeData(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        //Text Control
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          // size = 16
          bodyLarge: GoogleFonts.poppins(
            color: TobetoAppColor.backgroundDark,
          ),
          // default text theme size = 14
          bodyMedium: GoogleFonts.poppins(
              color: TobetoAppColor.textColorBlack,
              fontWeight: FontWeight.normal),

          // size=12
          bodySmall: GoogleFonts.poppins(
            color: TobetoAppColor.textColorBlack,
          ),
          titleLarge: GoogleFonts.poppins(
            color: TobetoAppColor.textColorBlack,
          ),
          labelLarge: GoogleFonts.poppins(
              color: TobetoAppColor.textColor, fontWeight: FontWeight.bold),
        ),

        //Input Control
        inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: TobetoAppColor.textColor,
          suffixIconColor: TobetoAppColor.textColor,
          labelStyle: TextStyle(
            color: TobetoAppColor.textColor,
          ),
        ),
        //Button Control
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              backgroundColor: TobetoAppColor.colorSchemeLight.primary,
              fixedSize: const Size(350, 45),
              foregroundColor: TobetoAppColor.textColorDark),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: TobetoAppColor.textColorBlack,
              textStyle: const TextStyle()),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
              foregroundColor: TobetoAppColor.textColor, iconSize: 25),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              backgroundColor: TobetoAppColor.buttonColorLight,
              foregroundColor: TobetoAppColor.colorSchemeLight.primary,
              fixedSize: const Size(140, 60)),
        ),
        iconTheme:
            IconThemeData(color: TobetoAppColor.buttonColorDark, size: 30),

        //Drawer Control

        drawerTheme:
            DrawerThemeData(backgroundColor: TobetoAppColor.backgroundLight));
  }

  //Dark Theme
  static ThemeData darkTheme() {
    return ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: TobetoAppColor.backgroundDark,
        appBarTheme: AppBarTheme(
          color: TobetoAppColor.backgroundDark,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        colorScheme: TobetoAppColor.colorSchemeDark,
        // showModalBottomSheet => Üst köşelerin düz olması saglandı
        bottomSheetTheme: const BottomSheetThemeData(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          bodyLarge: GoogleFonts.poppins(
            color: TobetoAppColor.textColorDark,
          ),
          bodyMedium: GoogleFonts.poppins(
              color: TobetoAppColor.textColorDark,
              fontWeight: FontWeight.normal),
          bodySmall: GoogleFonts.poppins(color: TobetoAppColor.textColorDark),
          titleLarge: GoogleFonts.poppins(
            color: TobetoAppColor.textColorDark,
          ),
          labelLarge: GoogleFonts.poppins(
              color: TobetoAppColor.textColor, fontWeight: FontWeight.bold),
          displayLarge: TextStyle(color: TobetoAppColor.textColorBlack),
        ),

        //Input Control
        inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: TobetoAppColor.textColor,
          suffixIconColor: TobetoAppColor.textColor,
          labelStyle: TextStyle(
            color: TobetoAppColor.textColor,
          ),
        ),

        //Button Control

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: TobetoAppColor.colorSchemeLight.primary,
              fixedSize: const Size(350, 45),
              foregroundColor: TobetoAppColor.textColorDark),
        ),
        textButtonTheme: TextButtonThemeData(
          style:
              TextButton.styleFrom(foregroundColor: TobetoAppColor.textColor),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
              foregroundColor: TobetoAppColor.textColor, iconSize: 30),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: TobetoAppColor.buttonColorLight,
            foregroundColor: TobetoAppColor.colorSchemeLight.primary,
            fixedSize: const Size(140, 60),
          ),
        ),
        drawerTheme:
            DrawerThemeData(backgroundColor: TobetoAppColor.backgroundDark));
  }
}
