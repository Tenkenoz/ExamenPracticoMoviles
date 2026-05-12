import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaFormularios {
  static final campoTexto = InputDecorationTheme(
    filled: true,
    fillColor: ColoresApp.superficie,
    labelStyle: const TextStyle(color: ColoresApp.secundario),
    hintStyle: const TextStyle(color: Colors.grey),
    prefixIconColor: ColoresApp.primario,
    suffixIconColor: ColoresApp.primario,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: ColoresApp.borde),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: ColoresApp.borde),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: ColoresApp.primario, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: ColoresApp.error),
    ),
  );
}