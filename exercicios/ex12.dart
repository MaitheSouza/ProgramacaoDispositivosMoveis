/* 12. Entrar via teclado com um valor (X) qualquer. Digitar o intervalo que o programa que deverá calcular a tabuada do valor X digitado, sendo que o segundo valor (B), deverá ser maior que o primeiro (A). Exibir a tabuada do valor digitado, no intervalo decrescente, ou seja, a tabuada de X no intervalo de B para A. */

void main() {
  int valorInicial = 1;
  int valorFinal = 5;
  if (valorFinal > valorInicial) {
    for (int multiplicacao = valorFinal;
        multiplicacao >= valorInicial;
        multiplicacao--) {
      print("tabuada do numero $multiplicacao");
      for (int i = valorFinal; i >= valorInicial; i--) {
        print("$multiplicacao * $i = ${i * multiplicacao}");
      }
    }
  } else {
    print('O valor Final precisa ser maior que o valor inicial');
  }
}
