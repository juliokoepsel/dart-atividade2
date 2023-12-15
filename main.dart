import 'cliente.dart';
import 'produto.dart';
import 'venda.dart';
import 'venda_item.dart';

fazerPedido3Produtos(Cliente cliente, Produto produto1, int quantidade1,
    Produto produto2, int quantidade2, Produto produto3, int quantidade3) {
  Venda pedido = Venda(cliente: cliente);

  pedido.itens.add(VendaItem(produto: produto1, quantidade: quantidade1));
  pedido.itens.add(VendaItem(produto: produto2, quantidade: quantidade2));
  pedido.itens.add(VendaItem(produto: produto3, quantidade: quantidade3));

  print("Pedido do cliente: ${cliente.nome}");
  for (var item in pedido.itens) {
    print("${item.produto!.nome} x ${item.quantidade}");
  }

  double total = pedido.valorTotal;
  print("Total do pedido: \$${total}");
}

void main() {
  Cliente cliente = Cliente(nome: "João", cpf: "12312312300");

  Produto produto1 = Produto(codigo: 1, nome: "Banana", preco: 2.0);
  Produto produto2 = Produto(codigo: 2, nome: "Maçã", preco: 3.0);
  Produto produto3 = Produto(codigo: 3, nome: "Laranja", preco: 5.0);

  fazerPedido3Produtos(cliente, produto1, 1, produto2, 3, produto3, 2);
}
