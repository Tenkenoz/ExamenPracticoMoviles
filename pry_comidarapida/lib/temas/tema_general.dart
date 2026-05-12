import 'package:flutter/material.dart';
import 'esquema_color.dart';
import 'tema_botones.dart';
import 'tipografia.dart';
import 'tema_appbar.dart';
import 'tema_formularios.dart';

class TemaGeneral {
  static ThemeData claro = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: ColoresApp.primario,
      onPrimary: ColoresApp.onPrimario,
      primaryContainer: ColoresApp.primarioContenedor,
      onPrimaryContainer: ColoresApp.onPrimarioContenedor,
      secondary: ColoresApp.secundario,
      onSecondary: ColoresApp.onSecundario,
      secondaryContainer: ColoresApp.secundarioContenedor,
      onSecondaryContainer: ColoresApp.onSecundarioContenedor,
      error: ColoresApp.error,
      onError: ColoresApp.onError,
      errorContainer: ColoresApp.errorContenedor,
      onErrorContainer: ColoresApp.onErrorContenedor,
      background: ColoresApp.fondo,
      onBackground: ColoresApp.onFondo,
      surface: ColoresApp.superficie,
      onSurface: ColoresApp.onSuperficie,
      surfaceVariant: ColoresApp.superficieVariante,
      onSurfaceVariant: ColoresApp.onSuperficieVariante,
      outline: ColoresApp.borde,
    ),
    textTheme: Tipografia.tema,
    appBarTheme: TemaAppbar.tema,
    elevatedButtonTheme: TemaBotones.botonPrincipal,
    outlinedButtonTheme: TemaBotones.botonSecundario,
    inputDecorationTheme: TemaFormularios.campoTexto,
    scaffoldBackgroundColor: ColoresApp.fondo,
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>((states) {
        if (states.contains(MaterialState.selected)) {
          return ColoresApp.primario;
        }
        return null;
      }),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
  );
}
