import 'cliente.dart';
import 'venda_item.dart';

class Venda {
  Cliente cliente;
  List<VendaItem> itens = [];

  Venda({required this.cliente});

  double get valorTotal {
    return itens
        .map((item) => item.preco * item.quantidade)
        .reduce((t, a) => t + a);
  }
}
