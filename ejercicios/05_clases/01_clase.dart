import './clases/person.dart';

void main() {

  final person = new Person(age: 12);
  final person2 = new Person.age40('josejose');
  final person3 = new Person.twoParameters(15, name: 'persona 3');
  final person4 = new Person.optional(age: 50, name: 'nombre opcional');
  // final person = new Person(age: 12, name: 'Ivan');

  // person..name = 'Phils'
  //       ..age = 29;
        // .._description = 'my address is nicasio' // es una propiedad privada

  print(person2);
  print(person3);
  print(person4);
  print(person.description);

  person.description = 'nuevo valor';
  print(person.description);
}
