import 'package:flutter/material.dart';
import 'temas/tema_general.dart';
import 'vista/vista_comida_rapida.dart';
import 'vista/vista_nota_venta_comida.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comida Rápida App',
      debugShowCheckedModeBanner: false,
      theme: TemaGeneral.claro,
      initialRoute: '/comida',
      routes: {
        '/comida': (context) => const VistaComidaRapida(),
        '/notaVentaComida': (context) => const VistaNotaVentaComida(),
      },
    );
  }
}
