import 'package:flutter/material.dart';

class SelectorSimple extends StatelessWidget {
  final String etiqueta;
  final String? valor;
  final List<String> opciones;
  final ValueChanged<String?> onChanged;

  const SelectorSimple({
    super.key,
    required this.etiqueta,
    required this.valor,
    required this.opciones,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: valor,
      decoration: InputDecoration(
        labelText: etiqueta,
      ),
      items: opciones.map((String opcion) {
        return DropdownMenuItem<String>(
          value: opcion,
          child: Text(opcion),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
