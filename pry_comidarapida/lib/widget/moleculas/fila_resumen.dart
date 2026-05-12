import 'package:flutter/material.dart';
import '../atomos/LabelText.dart';

class FilaResumen extends StatelessWidget {
  final String etiqueta;
  final String valor;
  final bool esTotal;

  const FilaResumen({
    super.key,
    required this.etiqueta,
    required this.valor,
    this.esTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LabelText(text: etiqueta),
          Text(
            valor,
            style: esTotal 
              ? Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                )
              : Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
