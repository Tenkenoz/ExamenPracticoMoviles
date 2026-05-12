class PedidoComidaModelo {
  String cliente;
  String producto;
  String tipoCombo;
  int cantidad;
  double precioBase;
  double precioCombo;

  PedidoComidaModelo({
    required this.cliente,
    required this.producto,
    required this.tipoCombo,
    required this.cantidad,
    required this.precioBase,
    required this.precioCombo,
  });


  double get subtotal => (precioBase + precioCombo) * cantidad;
  double get iva => subtotal * 0.15;
  double get total => subtotal + iva;
}
