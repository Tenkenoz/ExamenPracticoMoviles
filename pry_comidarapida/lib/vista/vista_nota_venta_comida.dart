import 'package:flutter/material.dart';
import '../modelo/modelo_comidarapida.dart';
import '../widget/organismos/bloque_resumen_nota.dart';
import '../widget/atomos/botonVolver.dart';

class VistaNotaVentaComida extends StatelessWidget {

  const VistaNotaVentaComida({super.key});

  @override
  Widget build(BuildContext context) {
    final pedido = ModalRoute.of(context)!.settings.arguments as PedidoComidaModelo;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nota de Venta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            BloqueResumenNota(pedido: pedido),
            const SizedBox(height: 24),
            const BotonVolver(),
          ],
        ),
      ),
    );
  }
}
