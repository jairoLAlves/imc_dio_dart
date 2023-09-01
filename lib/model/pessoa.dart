class Pessoa {
  String? nome;
  double? peso;
  double? altura;

  Pessoa({
    this.nome,
    this.peso,
    this.altura,
  });

  @override
  String toString() => 'nome: $nome, peso: $peso, altura: $altura';
}
