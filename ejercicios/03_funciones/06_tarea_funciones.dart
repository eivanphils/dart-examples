/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

main() {

  // Ejemplo: 
  // Crear una función para imprimir STDOUTS en lugar de 
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada
  printMessage('=========== Usuario 1 =============');
  createUser(1500);


  // Persona 2
  printMessage('=========== Usuario 2 =============');
  createUser( 1800);
}


void printMessage(String message)  => stdout.writeln(message);

String reed() => stdin.readLineSync() ?? '';

void createUser(double salary) {

  printMessage('¿Cúal es su nombre?');
  String name = stdin.readLineSync() ?? '';

  printMessage('¿Qué edad tienes?');
  String age = stdin.readLineSync() ?? '';
  
  printMessage('¿En qué país naciste?');
  String country = stdin.readLineSync() ?? '';

  final Map<String, dynamic> user = {
    'nombre': name,
    'edad'  : age,
    'pais'  : country,
    'salary': salary,
    'deductions': salary * 0.15
  };

  user['net'] = salary - user['deductions']; 

  print(user);

}