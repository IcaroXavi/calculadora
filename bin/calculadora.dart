import 'dart:io';

void main() {
  List<String> operacoes = <String>["+", "-", "*", "/"];
  String operacao = "";
  double? numeroUm;
  double? numeroDois;
  double resultado = 0;

  void getNumeroUm() {
    print("Digite o primeiro valor");
    numeroUm = double.tryParse(stdin.readLineSync() ?? "");

    if (numeroUm == null) {
      print("Valor inválido. Digite um número.");
      getNumeroUm();
    }
  }

  void getOperador() {
    print("Digite a operação [ + - * / ])");
    operacao = stdin.readLineSync()!;
    if (operacoes.contains(operacao)) {
    } else {
      print("Opercação inválida.");
      getOperador();
    }
  }

  void getNumeroDois() {
    print("Digite o segundo valor");
    numeroDois = double.tryParse(stdin.readLineSync() ?? "");

    if (numeroDois == null) {
      print("Valor inválido. Digite um número.");
      getNumeroDois();
    }
  }

  void calcular() {
    getNumeroUm();
    getOperador();
    getNumeroDois();
    switch (operacao) {
      case "+":
        resultado = numeroUm! + numeroDois!;
        break;
      case "-":
        resultado = numeroUm! - numeroDois!;
        break;
      case "*":
        resultado = numeroUm! * numeroDois!;
        break;
      case "/":
        resultado = numeroUm! / numeroDois!;
        break;
    }
    print("Resultado: $resultado");
  }

  calcular();
}
