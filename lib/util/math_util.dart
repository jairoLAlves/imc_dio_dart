import 'dart:math' as math;

class MathUtil {

  static double calcularIMC(double peso, double altura) {
    if(peso < 1) throw Exception("O peso deve ser maior que 0!");
    if(altura < 1) throw Exception("A altura deve ser maior que 0!");
    double imc = peso / (math.pow(altura, 2));
    return imc;
  }
  
}
