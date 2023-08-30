
import 'dart:io';

class ConsoleUtil {

  static  reader<R>(String msgConsole) {
    

    print(msgConsole);

    String? consoleVar = stdin.readLineSync();

     switch (R.runtimeType) {
      case double:
        return double.tryParse(consoleVar ?? "");
      
    }

  }
}
