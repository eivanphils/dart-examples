class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void printPerson() => print('Nombre: $name - Edad: $age');
}

class Client extends Person {
  String? address;
  List orders = [];

  Client(int newAge, String newName) : super(newName, newAge);

  @override
  void printPerson() {
    super.printPerson();
    print('Cliente: $name ($age)');
  }
}

void main() {
  final person = new Client(30, 'jose');

  person.printPerson();
}
