mixin Caminar {
  void canWalk(String name) {
    print('$name puede caminar');
  }
}

mixin Nadar {
  void canSwim(String name) {
    print('$name puede nadar');
  }
}
mixin Volar {
  void canFly(String name) {
    print('$name puede volar');
  }
}

abstract class Mamifero {
  String cantidadPatas;
  String tipoPelo;

  Mamifero(this.cantidadPatas, this.tipoPelo);
}

abstract class Ave {
  String color;
  bool aceiteEnAlas;

  Ave(this.color, this.aceiteEnAlas);
}

abstract class Pez {
  String color;
  bool vegano;

  Pez(this.color, this.vegano);
}

class Gallina extends Ave with Caminar {
  Gallina(String color, bool aceite) : super(color, aceite);
}

class PezGato extends Pez with Volar, Nadar {
  String name;
  PezGato(String color, bool isVegan, this.name) : super(color, isVegan);

  void imprimirPezGato() =>
      print('Color: $color - Es vegano $vegano');
}

void main() {
  final gallina = new Gallina('roja y amarillo', true);

  print(gallina.aceiteEnAlas);
  print(gallina.color);

  gallina.canWalk('terezza');

  final miPez = new PezGato('verde', false, 'Lorenzo');
  miPez.imprimirPezGato();
  miPez.canFly(miPez.name);
  miPez.canSwim(miPez.name);
}
