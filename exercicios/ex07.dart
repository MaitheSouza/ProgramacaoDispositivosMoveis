/* 7. Entrar com o peso e a altura de uma determinada pessoa. Após a digitação, exibir se esta pessoa está ou não com seu peso ideal. Fórmula: peso/altura². */

void main() {
  double peso = 50;
  double altura = 1.50;

  double calcPeso = peso / (altura * altura);

  String mensagemPesoFem = (calcPeso < 19)
      ? "Abaixo do peso"
      : calcPeso >= 19 && calcPeso < 24
          ? "Peso ideal"
          : "Acima do peso";

  print(mensagemPesoFem);
}
