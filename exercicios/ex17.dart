/* 17. Armazenar dez valores na memória do computador. Após a digitação dos valores, criar uma rotina para ler os valores e achar e exibir o maior deles. */

void main() {
  List<int> numeros = [52, 9, 89, 7, 8, 5, 95, 3, 2, 1];

  var maiorValor = numeros[0];

  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] > maiorValor) {
      maiorValor = numeros[i];
    }
  }
  print('$maiorValor');
}
