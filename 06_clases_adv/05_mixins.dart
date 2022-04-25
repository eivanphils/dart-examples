// no se pueden crear instancias
// no tiene constructor
// solo se puede transferir sus propiedades a otra clase
mixin Logger {
  void imprimir(String texto) {
    final hoy = new DateTime.now();
    print('$hoy :::: $texto');
  }
}

// puede funcionar como un mixin
// pero si se agrega el constructor se debe usar extends en vez de with
class Logger2 {
  void imprimir2(String texto) {
    final hoy = new DateTime.now();
    print('$hoy :::: $texto');
  }
}

abstract class Astro with Logger {
  String nombre = 'as';

  Astro() {
    imprimir('init astro');
  }

  void existo() {
    imprimir('soy un ser celestial');
  }
}

class Asteroide extends Astro with Logger, Logger2 {
  String nombre;

  Asteroide(this.nombre) {
    imprimir(this.nombre);
    imprimir2(this.nombre);
  }
}

void main() {
  final thanos = new Asteroide('thanos');
  thanos.existo();
}
