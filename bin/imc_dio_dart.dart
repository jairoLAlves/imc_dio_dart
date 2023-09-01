import 'package:imc_dio_dart/controller/imc_controller.dart';
import 'package:imc_dio_dart/model/pessoa.dart';


void main(List<String> arguments) async {
  IMCController imcController = IMCController();
  Pessoa newPessoa = await imcController.getPessoa();
  imcController.printIMC(newPessoa);
}
