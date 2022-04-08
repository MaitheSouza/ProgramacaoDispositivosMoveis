/*11. Entrar via teclado com um valor qualquer. Após a digitação, exibir a tabuada do valor solicitado, no intervalo de um a dez.*/

void main() {
  for (int multiplicacao = 1; multiplicacao <= 10; multiplicacao++) {
    print("tabuada do numero $multiplicacao");
    for (int contador = 1; contador <= 10; contador++) {
      print("$multiplicacao * $contador = ${contador * multiplicacao}");
    }
  }
}
