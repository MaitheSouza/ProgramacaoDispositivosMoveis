/* 20. Armazenar o nome, sexo e idade de 5 pessoas. As entradas devem ser apenas “F” ou “M” para o sexo e valores positivos para a idade. Após a digitação dos dados, exibir os dados (nome, sexo e idade) de todas as pessoas do sexo feminino. */

void main() {
  List pessoas = [
    {'nome': 'Rebeca', 'sexo': 'F', 'idade': '12'},
    {'nome': 'Leticia', 'sexo': 'F', 'idade': '32'},
    {'nome': 'Tyler', 'sexo': 'M', 'idade': '39'},
    {'nome': 'Larissa', 'sexo': 'F', 'idade': '22'},
    {'nome': 'Robson', 'sexo': 'M', 'idade': '92'}
  ];

  pessoas.forEach((pessoa) {
    if (pessoa['sexo'] == 'F') {
      print(pessoa);
    }
  });
}
