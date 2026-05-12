import '../modelo/modelo_comidarapida.dart';

class ComidaControlador {
  static const Map<String, double> preciosProductos = {
    'Hamburguesa': 5.00,
    'Salchipapa': 3.50,
    'Hot Dog': 2.50,
  };

  static const Map<String, double> preciosCombos = {
    'Solo producto': 0.00,
    'Combo con papas': 1.50,
    'Combo completo': 2.50,
  };

  PedidoComidaModelo? calcularPedido(String cliente, String producto, String combo, String cantidadStr) {
    if (cliente.isEmpty || producto.isEmpty || combo.isEmpty || cantidadStr.isEmpty) {
      return null;
    }

    int? cantidad = int.tryParse(cantidadStr);
    if (cantidad == null || cantidad <= 0) {
      return null;
    }

    double precioBase = preciosProductos[producto] ?? 0.0;
    double precioCombo = preciosCombos[combo] ?? 0.0;

    double subtotal = (precioBase + precioCombo) * cantidad;
    double iva = subtotal * 0.15;
    double total = subtotal + iva;

    return PedidoComidaModelo(
      cliente: cliente,
      producto: producto,
      tipoCombo: combo,
      cantidad: cantidad,
      subtotal: subtotal,
      iva: iva,
      total: total,
    );
  }
}
