//import 'package:imc_dio_dart/imc_dio_dart.dart';
//import 'package:test/test.dart';

import 'package:imc_dio_dart/util/math_util.dart';
import 'package:test/test.dart';

void main() {
  group('Excessões de parametros calcularIMC', () {});
  test('Deve lançar uma excessão se peso for menor que 1', () {
    expect(() => MathUtil.calcularIMC(0, 10), throwsA(isA<Exception>()));
  });

  test('Deve lançar uma excessão se altura for menor que 1', () {
    expect(() => MathUtil.calcularIMC(10, 0), throwsA(isA<Exception>()));
  });
}
