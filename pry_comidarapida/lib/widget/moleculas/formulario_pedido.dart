import 'package:flutter/material.dart';
import '../atomos/inputPersonalizado.dart';
import '../atomos/inputDecimal.dart';
import '../atomos/selector_simple.dart';

class FormularioPedido extends StatelessWidget {
  final TextEditingController clienteController;
  final TextEditingController cantidadController;
  final String? productoSeleccionado;
  final String? comboSeleccionado;
  final List<String> productos;
  final List<String> combos;
  final ValueChanged<String?> onProductoChanged;
  final ValueChanged<String?> onComboChanged;

  const FormularioPedido({
    super.key,
    required this.clienteController,
    required this.cantidadController,
    required this.productoSeleccionado,
    required this.comboSeleccionado,
    required this.productos,
    required this.combos,
    required this.onProductoChanged,
    required this.onComboChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputPersonalizado(
          etiqueta: 'Nombre del Cliente',
          controlador: clienteController,
        ),
        const SizedBox(height: 16),
        SelectorSimple(
          etiqueta: 'Producto',
          valor: productoSeleccionado,
          opciones: productos,
          onChanged: onProductoChanged,
        ),
        const SizedBox(height: 16),
        SelectorSimple(
          etiqueta: 'Tipo de Combo',
          valor: comboSeleccionado,
          opciones: combos,
          onChanged: onComboChanged,
        ),
        const SizedBox(height: 16),
        InputDecimal(
          text: 'Cantidad',
          controller: cantidadController,
        ),
      ],
    );
  }
}
