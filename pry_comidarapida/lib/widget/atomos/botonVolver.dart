import 'package:flutter/material.dart';

class BotonVolver extends StatelessWidget {
  const BotonVolver({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.arrow_back),
      label: const Text("Volver al Menú"),
    );
  }
}
