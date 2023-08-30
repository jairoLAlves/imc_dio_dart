

class Pessoa {
  late String _nome;
  late double _peso;
  late double _altura;

  Pessoa({
    required String nome,
    required double peso,
    required double altura,
  }) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String get nome => _nome;
  double get peso => _peso;
  double get altura => _altura;

  set nome(String nome) => _nome = nome;
  set peso(double peso) => _peso = peso;
  set altura(double altura) => _altura = altura;


  @override
  String toString() => 'nome: $_nome, peso: $_peso, altura: $_altura';

}
