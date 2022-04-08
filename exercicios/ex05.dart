/* 5. Entrar via teclado com o valor de cinco produtos. Após as entradas, digitar um valor referente ao
pagamento da somatória destes valores. Calcular e exibir o troco que deverá ser devolvido.
 */

void main() {
  double prod1 = 100;
  double prod2 = 200;
  double prod3 = 100;
  double prod4 = 100;
  double prod5 = 500;
  double pagamento = 2000;

  double valorProd = (prod1 + prod2 + prod3 + prod4 + prod5);

  double troco = (pagamento - valorProd);

  print(
      'O cliente entregou $pagamento reais para pagar 5 produtos de valor $valorProd e recebeu $troco reais de troco');
}
