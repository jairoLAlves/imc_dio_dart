import 'dart:io';

class ConsoleUtil {
  static Future<String> reader(String msgConsole) async {
    String? consoleVar;

    while (true) {
      print(msgConsole);
      consoleVar = stdin.readLineSync();
      if (consoleVar != null && consoleVar.isNotEmpty) break;
    }

    return consoleVar;
  }

  static String imcStatus(double imc) {
    return switch (imc) {
      < 16 => 'Magreza Grave',
      >= 16 && < 17 => 'Magreza  Moderada',
      >= 17 && < 18.5 => 'Magreza Leve',
      >= 18.5 && < 25 => 'Saudável',
      >= 25 && < 30 => 'Sobrepeso',
      >= 30 && < 35 => 'Sobrepeso Grau 1',
      >= 35 && < 40 => 'Obesidade Grau 2 (Severa) ',
      > 40 => 'Obesidade Grau 3 (Mórbida)',
      _ => '',
    };
  }
}
