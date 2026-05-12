import 'package:flutter/material.dart';
import '../moleculas/formulario_pedido.dart';
import '../atomos/botonPrimario.dart';

class SeccionFormularioComida extends StatelessWidget {
  final TextEditingController clienteController;
  final TextEditingController cantidadController;
  final String? productoSeleccionado;
  final String? comboSeleccionado;
  final List<String> productos;
  final List<String> combos;
  final ValueChanged<String?> onProductoChanged;
  final ValueChanged<String?> onComboChanged;
  final VoidCallback onCalcular;
  final VoidCallback onLimpiar;

  const SeccionFormularioComida({
    super.key,
    required this.clienteController,
    required this.cantidadController,
    required this.productoSeleccionado,
    required this.comboSeleccionado,
    required this.productos,
    required this.combos,
    required this.onProductoChanged,
    required this.onComboChanged,
    required this.onCalcular,
    required this.onLimpiar,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          FormularioPedido(
            clienteController: clienteController,
            cantidadController: cantidadController,
            productoSeleccionado: productoSeleccionado,
            comboSeleccionado: comboSeleccionado,
            productos: productos,
            combos: combos,
            onProductoChanged: onProductoChanged,
            onComboChanged: onComboChanged,
          ),
          const SizedBox(height: 32),
          CustomButton(
            label: 'Calcular Pedido',
            icon: Icons.calculate,
            onPressed: onCalcular,
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: onLimpiar,
            icon: const Icon(Icons.refresh),
            label: const Text('Limpiar Formulario'),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
          ),
        ],
      ),
    );
  }
}
