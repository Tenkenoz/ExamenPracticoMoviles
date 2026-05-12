import 'package:flutter/material.dart';
import '../controlador/controlador_comidarapida.dart';
import '../widget/organismos/seccion_formulario_comida.dart';
import '../widget/atomos/LabelText.dart';

class VistaComidaRapida extends StatefulWidget {
  const VistaComidaRapida({super.key});

  @override
  State<VistaComidaRapida> createState() => _VistaComidaRapidaState();
}

class _VistaComidaRapidaState extends State<VistaComidaRapida> {
  final TextEditingController _clienteController = TextEditingController();
  final TextEditingController _cantidadController = TextEditingController();
  final ComidaControlador _controlador = ComidaControlador();

  String? _productoSeleccionado;
  String? _comboSeleccionado;
  String nota = "";
  final List<String> _productos = ['Hamburguesa', 'Salchipapa', 'Hot Dog'];
  final List<String> _combos = ['Solo producto', 'Combo con papas', 'Combo completo'];

  void _calcular() {
    final pedido = _controlador.calcularPedido(
      _clienteController.text,
      _productoSeleccionado ?? '',
      _comboSeleccionado ?? '',
      _cantidadController.text,
    );

    if (pedido != null) {
      setState(() => nota = "");
      Navigator.pushNamed(
        context,
        '/notaVentaComida',
        arguments: pedido,
      );
    } else {
      setState(() {
        nota = "Error: Verifique que todos los campos estén llenos y la cantidad sea mayor a 0";
      });
    }
  }

  void _limpiar() {
    setState(() {
      _clienteController.clear();
      _cantidadController.clear();
      _productoSeleccionado = null;
      _comboSeleccionado = null;
      nota = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedido Comida Rápida'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SeccionFormularioComida(
              clienteController: _clienteController,
              cantidadController: _cantidadController,
              productoSeleccionado: _productoSeleccionado,
              comboSeleccionado: _comboSeleccionado,
              productos: _productos,
              combos: _combos,
              onProductoChanged: (val) => setState(() => _productoSeleccionado = val),
              onComboChanged: (val) => setState(() => _comboSeleccionado = val),
              onCalcular: _calcular,
              onLimpiar: _limpiar,
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: LabelText(text: nota),
            ),
        ],
      ),
    );
  }
}
