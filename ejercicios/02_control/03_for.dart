import 'dart:io';

main() {
  for (int i = 0; i < 10; i++) {
    print('usuario $i');

    print('String' + i.toString());

    print('index * 2 = ${i * 2}');
  }

  stdout.writeln('Introduce un valor del 1 al 10');

  int number = int.parse(stdin.readLineSync() ?? '1');

  stdout.writeln('Esta es la tabla de multiplicar del $number');
  for (int i = 1; i < 11; i++) {
    stdout.writeln('$number * $i = ${number * i}');
  } 
}
