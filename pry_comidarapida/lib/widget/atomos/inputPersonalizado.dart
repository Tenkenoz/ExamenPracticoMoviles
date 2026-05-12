import 'package:flutter/material.dart';

class InputPersonalizado extends StatelessWidget {
  final String etiqueta;
  final TextEditingController controlador;
  final bool ocultarTexto;
  final TextInputType keyboardType;

  const InputPersonalizado({
    super.key,
    required this.etiqueta,
    required this.controlador,
    this.ocultarTexto = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlador,
      obscureText: ocultarTexto,
      keyboardType: keyboardType,
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        labelText: etiqueta,
      ),
    );
  }
}
