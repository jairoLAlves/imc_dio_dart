import 'dart:math' as math;

class MathUtil {

  static double calcularIMC(double peso, double altura) {
    double imc = peso / (math.pow(altura, 2));
    return imc;
  }
  
}
