import 'dart:io';

void main() {
  try {
    stdout.write('Informe o nome da pessoa: ');
    String nome = stdin.readLineSync()!;

    stdout.write('Informe o peso: ');
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write('Informe a altura: ');
    double altura = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(nome, peso, altura);

    double imc = pessoa.calcularIMC();

    String imcFormatado = imc.toStringAsFixed(2);
    print('O IMC de ${pessoa.nome} é $imcFormatado');

  

    if (imc > 25.0) {
      print(
          '${pessoa.nome}  Olha vamos fazer uns exercicios porque voçê está ACIMA DO PESO.');
    } else if (imc < 18.5) {
      print(
          '${pessoa.nome} Sugiro que vá a um especialista porque voçê esta DESNUTRIDO?.');
    } else {
      print('${pessoa.nome} Show é isso ai voçê está dentro do PESO IDEAL.');
    }
  } catch (e) {
    print('Ocorreu um erro: $e');
  }
}

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularIMC() {
    return peso / (altura * altura);
  }
}
