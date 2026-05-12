import 'package:flutter/material.dart';
import 'esquema_color.dart';

class Tipografia {
  static const TextTheme tema = TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: ColoresApp.textoOscuro,
      letterSpacing: -0.5,
    ),
    displayMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: ColoresApp.textoOscuro,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: ColoresApp.textoOscuro,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: ColoresApp.textoOscuro,
      letterSpacing: 0.15,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: ColoresApp.textoOscuro,
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: ColoresApp.textoOscuro,
      letterSpacing: 0.25,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: ColoresApp.primario,
      letterSpacing: 0.1,
    ),
  );
}
