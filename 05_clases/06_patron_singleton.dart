import 'clases/mi_servicio.dart';

void main() {
  final myService1 = new MiServicio();
  myService1.url = 'la url de mi primera instancia';

  final myService2 = new MiServicio();
  myService2.url = 'cambio la url misma referencia en memoria';

  print(myService1 == myService2); // true
  print(myService1.url);
  print(myService2.url);
}