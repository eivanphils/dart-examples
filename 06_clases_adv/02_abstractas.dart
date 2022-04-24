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
