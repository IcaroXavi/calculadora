import 'dart:io';

void main() {
  List<String> operacoes = <String>["+", "-", "*", "/"];
  String operacao = "";

  void getNumeroUm() {
    print("Digite o primeiro valor");
    double? numeroUm = double.tryParse(stdin.readLineSync()!);

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
    double? numeroDois = double.tryParse(stdin.readLineSync()!);

    if (numeroDois == null) {
      print("Valor inválido. Digite um número.");
      getNumeroDois();
    }
  }

  void 

  getNumeroUm();
  getOperador();
  getNumeroDois();
}
