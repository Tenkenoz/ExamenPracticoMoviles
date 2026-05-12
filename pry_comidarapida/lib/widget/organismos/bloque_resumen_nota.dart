import 'package:flutter/material.dart';
import '../../modelo/modelo_comidarapida.dart';
import '../atomos/textoRespuesta.dart';
import '../moleculas/fila_resumen.dart';

class BloqueResumenNota extends StatelessWidget {
  final PedidoComidaModelo pedido;

  const BloqueResumenNota({super.key, required this.pedido});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: TextoRespuesta(text: 'NOTA DE VENTA')),
            const Divider(height: 30),
            FilaResumen(etiqueta: 'Cliente:', valor: pedido.cliente),
            FilaResumen(etiqueta: 'Producto:', valor: pedido.producto),
            FilaResumen(etiqueta: 'Combo:', valor: pedido.tipoCombo),
            FilaResumen(etiqueta: 'Cantidad:', valor: pedido.cantidad.toString()),
            const Divider(),
            FilaResumen(etiqueta: 'Subtotal:', valor: '\$${pedido.subtotal.toStringAsFixed(2)}'),
            FilaResumen(etiqueta: 'IVA (15%):', valor: '\$${pedido.iva.toStringAsFixed(2)}'),
            const Divider(),
            FilaResumen(
              etiqueta: 'Total a Pagar:', 
              valor: '\$${pedido.total.toStringAsFixed(2)}', 
              esTotal: true
            ),
          ],
        ),
      ),
    );
  }
}
