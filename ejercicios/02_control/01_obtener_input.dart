import 'dart:developer';
import 'dart:io';

import 'dart:io';

main() {
  //imprimir en terminal o cm
  stdout.writeln('¿cual es tu nombre?');

  // leer informacion
  String? name = stdin.readLineSync();

  stdout.writeln('Tu nombre es $name');

}
