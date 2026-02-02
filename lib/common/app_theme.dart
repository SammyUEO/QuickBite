import 'package:flutter/material.dart';

/// Conține configurația globală a temei aplicației
class AppTheme {
  // Private constructor pentru a preveni instanțierea clasei
  AppTheme._();

  // Culori principale - Inspirate din iconița verde
  static const Color primaryColor = Color(
    0xFF9CCC65,
  ); // Verde fresh din iconiță
  static const Color backgroundColor = Color(
    0xFFF1F8E9,
  ); // Verde deschis pentru fundal
  static const Color cardColor = Colors.white;
  static const Color textPrimary = Color(
    0xFF33691E,
  ); // Verde închis pentru text
  static const Color textSecondary = Color(
    0xFF558B2F,
  ); // Verde mediu pentru text secundar
  static const Color accentColor = Color(0xFF7CB342); // Verde accent

  // Font family
  static const String defaultFontFamily = 'Roboto';

  // Tema aplicației
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.light,
      ),
      useMaterial3: true,
      fontFamily: defaultFontFamily,
    );
  }

  // Stiluri de text comune
  static const TextStyle titleLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: textPrimary,
  );

  static const TextStyle subtitleMedium = TextStyle(
    fontSize: 16,
    color: textSecondary,
  );

  static const TextStyle cardTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: textPrimary,
  );

  static const TextStyle appBarTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );

  // Border radius
  static const double cardBorderRadius = 16.0;
  static const double buttonBorderRadius = 12.0;

  // Padding și spacing
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 20.0;
  static const double paddingExtraLarge = 24.0;

  // Elevation
  static const double cardElevation = 4.0;
}
