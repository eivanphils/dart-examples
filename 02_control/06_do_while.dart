import 'dart:io';

main() {

  String continuar = 'y';
  int contador = 0;

  do {

    contador++;

    stdout.writeln('Contado: $contador');
    stdout.writeln('¿Desea continuar? (y/n)');

    continuar = stdin.readLineSync() ?? 'n';
  } while(continuar == 'y');
}