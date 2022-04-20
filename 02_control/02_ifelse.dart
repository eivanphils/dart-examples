import 'dart:io';

main() {

  stdout.writeln('¿cual es tu edad?');
  int age = int.parse(stdin.readLineSync() ?? '0');
  
  if (age >= 21) {
    stdout.writeln('Eres un ciudadano');
  } else if(age > 17) {
    stdout.writeln('Eres mayor de edad');
  } else {
    stdout.writeln('Eres menor de edad');
  }

}