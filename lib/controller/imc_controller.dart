import 'package:imc_dio_dart/model/pessoa.dart';
import 'package:imc_dio_dart/util/console_util.dart';
import 'package:imc_dio_dart/util/math_util.dart';

class IMCController {
  Future<Pessoa> getPessoa() async {
    String nome = await ConsoleUtil.reader('Digite Seu nome:');
    double peso = await _getNum('Qual é o seu Peso:');
    double altura = await _getNum('Qual é a sua altura:');

    return Pessoa(nome: nome, peso: peso, altura: altura);
  }

  Future<double> _getNum(String msg) async {
    double numRetorno;

    while (true) {
      double? n = double.tryParse(await ConsoleUtil.reader(msg));

      if (n != null) {
        numRetorno = n;

        break;
      } else {
        msg = 'Digite um numero válido';
      }
    }

    return numRetorno;
  }

  void printIMC(Pessoa pessoa) {
    try {
      double? imc = MathUtil.calcularIMC(pessoa.peso!, pessoa.altura!);
      print(
          'Seu IMC é: ${imc.toStringAsFixed(2)} =  ${ConsoleUtil.imcStatus(imc)}');
    } catch (e) {
      print('Error: $e');
    }
  }
}
