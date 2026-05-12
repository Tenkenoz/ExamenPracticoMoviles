import 'package:flutter/material.dart';
import 'esquema_color.dart';

class FondoApp {
  static const BoxDecoration degradadoPrincipal = BoxDecoration(
    gradient: LinearGradient(
      colors: [ColoresApp.primario, ColoresApp.secundario],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  static const BoxDecoration fondoSuave = BoxDecoration(
    color: ColoresApp.superficie,
  );

  static const BoxDecoration fondoBlanco = BoxDecoration(
    color: ColoresApp.textoClaro,
  );

  static const BoxDecoration decoracionTarjeta = BoxDecoration(
    color: ColoresApp.textoClaro,
    borderRadius: BorderRadius.all(Radius.circular(16)),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 8,
        offset: Offset(0, 4),
      ),
    ],
  );
}
