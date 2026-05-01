import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  List<String> operacoes = <String>["+", "-", "/", "*"];

  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  void calcular() {
    switch (operacao) {
      case "+":
        soma();

      case "-":
        subtracao();

      case "/":
        divisao();

      case "*":
        multiplicacao();

        break;
    }
  }

  print("Digite o primero valor:");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada);
    }
  }

  print("Digite a operação (+ - / *)");
  String? entrada3 = stdin.readLineSync();

  if (entrada3 != null) {
    operacao = entrada3;
  }

  print("Digite o segundo valor:");
  String? entrada2 = stdin.readLineSync();

  if (entrada2 != null) {
    if (entrada2 != "") {
      numeroDois = double.parse(entrada2);
    }
  }

  void getOperacao() {
    print("Digite a operação (+ - / *)");
    entrada3 = stdin.readLineSync();
    if (entrada3 != null) {
      if (operacoes.contains(entrada3)) {
        operacoes = entrada3!;
      }
    }
  }

  print("Resultado:");
  calcular();
}
