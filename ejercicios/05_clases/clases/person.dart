/**
 * String Propiedad nombre [name]
 * int Propiedad edad [age]
 * String Propiedad descripcion [description]
 */
class Person {
  // properties
  // las propiedades por defecto son publicas
  String? name;
  int? age;
  // el signo _ indica que la propiedad es privada
  String _description = 'mi descripcion';

  // Get and Sets
  // manera normal
  // String get description {
  //   return _description;
  // }

  // manera corta con funcion de flecha
  String get description => _description.toUpperCase();

  // manera normal
  // set description(String text) {
  //   _description = text;
  // }

  // manera corta o reducida
  set description(String text) => _description = text;

  // constructor
  // constructor normal
  // Person(int age, String name) {
  //   description = 'hola mundo';
  //   this.name = name;
  //   this.age = age;
  // }

  // constructor corto con argumentos posicionales
  // Person(this.name, this.age);
  
  // constructor resumido, se puede agregar por nombre 
  Person({this.age = 0, this.name = 'sin nombre'});

  // constructor con nombre
  Person.age40(this.name) {
    this.age = 40;
  }

  Person.twoParameters(int age, {String name: 'sin nombre'}) {
    this.age = 22;
    this.name = name;
  }

  Person.optional({int age = 20, String name: 'sin nombre'}) {
    this.age = age;
    this.name = name;
    this.description = 'constructor con valores opcionales';
  }

  // methods
  @override
  String toString() {
    return '$name - $age - $_description';
  }
}