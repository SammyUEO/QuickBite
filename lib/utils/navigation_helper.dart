import 'package:flutter/material.dart';

/// Utilități pentru navigare între ecrane
class NavigationHelper {
  // Private constructor pentru a preveni instanțierea clasei
  NavigationHelper._();

  /// Navigare către un ecran nou
  static Future<T?> navigateTo<T>(BuildContext context, Widget screen) {
    return Navigator.push<T>(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  /// Navigare cu înlocuirea ecranului curent
  static Future<T?> navigateAndReplace<T>(BuildContext context, Widget screen) {
    return Navigator.pushReplacement<T, void>(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  /// Înapoi la ecranul anterior
  static void goBack<T>(BuildContext context, [T? result]) {
    Navigator.pop<T>(context, result);
  }
}
