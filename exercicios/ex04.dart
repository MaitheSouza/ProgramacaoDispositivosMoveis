/* 4. Entrar via teclado com o valor da cotação do dólar e uma certa quantidade de dólares. Calcular e exibir o valor correspondente em Reais (R$). */

void main() {
  double cotacaoDolar = 5;
  double qtdDolar = 5000;

  double reais = (qtdDolar / cotacaoDolar);

  print('$reais reais equivale a $qtdDolar dólares');
}
