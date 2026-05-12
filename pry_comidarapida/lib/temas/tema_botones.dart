import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaBotones {
  static final botonPrincipal = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColoresApp.primario,
        foregroundColor: ColoresApp.textoClaro,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100), // Rounded pill shape
        ),
        textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      )
  );

  static final botonSecundario = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ColoresApp.primario,
      side: const BorderSide(color: ColoresApp.primario, width: 1.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
    )
  );
}