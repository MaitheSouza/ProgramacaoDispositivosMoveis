/* 14. Exibir os vinte primeiros valores da série de Bergamaschi. A série: 1, 1, 1, 3, 5, 9, 17, ... */

void main() {
  int n1 = 1, n2 = 1, n3 = 1, n4;
  print(n1);
  print(n2);
  print(n3);

  for (int i = 2; i <= 20; i++) {
    n4 = n1 + n2 + n3;
    print('$n4');
    n1 = n2;
    n2 = n3;
    n3 = n4;
  }
}
