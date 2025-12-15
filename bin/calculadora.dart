import 'dart:io';

void main() {
  print("Calculadora 1.0");
  double numero1 = 0;
  double numero2 = 0;
  String operacao = "";
  String? entrada = "";
  List<String> operacoes = <String>["+", "-", "x", "/"];

  void soma() {
    print("O resultado da operação entre $numero1 $operacao $numero2 =");
    print(numero1 + numero2);
  }

  void sub() {
    print("O resultado da operação entre $numero1 $operacao $numero2 =");
    print(numero1 - numero2);
  }

  void div() {
    print("O resultado da operação entre $numero1 $operacao $numero2 =");
    print(numero1 / numero2);
  }

  void mult() {
    print("O resultado da operação entre $numero1 $operacao $numero2 =");
    print(numero1 * numero2);
  }

  void getOperacao() {
    print("Agora escolha a operação \n ${operacoes.toString()}");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
      } else {
        print(
          'Operação inválida! Você digitou $entrada \nDigite \n${operacoes.toString()} ',
        );
        getOperacao();
      }
    }
  }

  calcular() {
    switch (operacao) {
      case '+':
        soma();
        break;
      case '-':
        sub();
        break;
      case '/':
        div();
        break;
      case 'x':
        mult();
        break;
    }
  }

  void numeroUm() {
    print("Digite o primeiro valor");
    entrada = stdin.readLineSync();

    if (entrada != null) {
      if (entrada != "") {
        numero1 = double.parse(entrada!);
      } else {
        print('Operação inválida! Você digitou um valor  vazio! ');
        numeroUm();
      }
    }
  }

  void numeroDois() {
    print("Digite o segundo valor");
    entrada = stdin.readLineSync();

    if (entrada != null) {
      if (entrada != "") {
        numero2 = double.parse(entrada!);
      } else {
        print('Operação inválida! Você digitou um valor vazio! ');
        numeroDois();
      }
    }
  }

  numeroUm();
  getOperacao();
  numeroDois();

  calcular();
}
