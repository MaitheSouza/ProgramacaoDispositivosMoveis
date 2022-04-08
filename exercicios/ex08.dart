/*8. A partir de três valores que serão digitados, verificar se formam ou não um triângulo. Em caso positivo, exibir sua classificação: “Isósceles, escaleno ou eqüilátero”. Um triângulo escaleno possui todos os lados diferentes, o isósceles, dois lados iguais e o eqüilátero, todos os lados iguais. Para existir triângulo é necessário que a soma de dois lados quaisquer seja maior que o outro, isto, para os três lados*/

void main() {
  double l1 = 1;
  double l2 = 2;
  double l3 = 5;

  if (l1 != l2 && l1 != l3 && l2 != l3) {
    print("Escaleno");
  } else if (l1 == l2 && l1 == l3) {
    print("equilatero");
  } else {
    print("Isósceles");
  }
}
