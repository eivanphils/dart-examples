class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void printPerson() => print('Nombre: $name - Edad: $age');
}

class Client extends Person {
  String? address;
  List orders = [];

  Client(int newAge, String newName) :
    super(newName, newAge);
    
}

void main() {
  final person = new Person('phils', 29);
  final person2 = new Client(30, 'jose');

  person.printPerson();
  person2.printPerson();
}
