/* 18. Armazenar vinte valores em um vetor. Após a digitação, entrar com uma constante multiplicativa que deverá multiplicar cada um dos valores do vetor e armazenar o resultado no próprio vetor, na respectiva posição.
 */

void main() {
  List<int> numeros = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    1027,
    18,
    19,
    20
  ];

  var reducedList =
      numeros.reduce((accumulated, element) => accumulated + element);

  numeros.add(reducedList);
  numeros.sort();

  print(numeros);
}
