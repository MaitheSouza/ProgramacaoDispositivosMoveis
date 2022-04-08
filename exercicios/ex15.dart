/* 15. Calcular e exibir a soma dos “N” primeiros valores da seqüência abaixo. O valor “N” será digitado, deverá ser positivo, mas menor que cem. Caso o valor não satisfaça a restrição, enviar mensagem de erro e solicitar o valor novamente.
A seqüência: 2, 5, 10, 17, 26, ....
 */

void main() {
  int n = 10;
  int par = 1;

  if (n > 0 && n < 100) {
    for (int i = 1; i <= 20; i += 2) {
      par = par + i;
      print(par);
    }
  } else {
    print('O valor deve ser entre 0 e 100');
  }
}
