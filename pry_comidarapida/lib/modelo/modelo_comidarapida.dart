class PedidoComidaModelo {
  String cliente;
  String producto;
  String tipoCombo;
  int cantidad;
  double subtotal;
  double iva;
  double total;

  PedidoComidaModelo({
    required this.cliente,
    required this.producto,
    required this.tipoCombo,
    required this.cantidad,
    required this.subtotal,
    required this.iva,
    required this.total,
  });
}
