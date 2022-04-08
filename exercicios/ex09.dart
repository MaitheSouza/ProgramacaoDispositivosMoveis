/* 9. Entrar com o peso, o sexo e a altura de uma determinada pessoa. Após a digitação, exibir se esta pessoa está ou não com seu peso ideal. Fórmula: peso/altura². */

void main() {
  double peso = 50;
  double altura = 1.50;
  String sexo = 'feminino';

  double calcPeso = peso / (altura * altura);

  String mensagemPesoFem = (sexo == 'feminino' && calcPeso < 19)
      ? "Abaixo do peso"
      : calcPeso >= 19 && calcPeso < 24
          ? "Peso ideal"
          : "Acima do peso";

  String mensagemPesoMasc = (sexo == 'masculino' && calcPeso < 20)
      ? "Abaixo do peso"
      : calcPeso >= 20 && calcPeso < 25
          ? "Peso ideal"
          : "Acima do peso";

  if (sexo == 'feminino') {
    print(mensagemPesoFem);
  } else {
    print(mensagemPesoMasc);
  }
}
