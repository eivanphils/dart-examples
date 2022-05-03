import 'dart:indexed_db';

abstract class Vehiculo {
  bool encendido = false;

  void enceder() {
    encendido = true;
    print('Vehiculo encendido');
  }

  void apagar() {
    encendido = false;
    print('Vehiculo apagado');
  }

  bool revisarMotor();
}

// al usar implements se deben definir y usar todos los metodos de Vehiculo
class Moto implements Vehiculo {
  @override
  void apagar() {
    // TODO: implement apagar
  }
  @override
  void enceder() {
    // TODO: implement enceder
  }

  @override
  bool revisarMotor() {
    // TODO: implement revisarMotor
    throw UnimplementedError();
  }

  bool encendido = false;
}

// al usar extends se deben heredan todos los metodos de Vehiculo pero no necesariamente se utilizan
class Carro extends Vehiculo {
  int kilometaje = 0;

  @override
  void apagar() {
    print('llama apagar desde clase carro borrando la funciona de vehiculo');
  }

  @override
  bool revisarMotor() {
    print('motor ok!!');
    return true;
  }
}

void main() {
  final miCarro = new Carro();

  miCarro.enceder();
  print(miCarro.encendido);

  miCarro.apagar();
  print(miCarro.encendido);

  miCarro.revisarMotor();
}
