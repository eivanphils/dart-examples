class Figura {
  int? base;
  int? altura;
  int? area;
  String? tipo;

  // el contructor factory devuelve una instancia de la clase nueva o pre-existente
  factory Figura(int base, int altura) {
    // aca se puede agregar la logica que desee pero retornando una instacia de la clase
    if (base == altura) {
      return Figura.cuadrado(base);
    } else {
      return Figura.rectangulo(base, altura);
    }
  }

  Figura.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  Figura.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectangulo';
  }

  @override
  String toString() {
    return {'base': base, 'altura': altura, 'area': area, 'tipo': tipo}.toString();
  }
}

void main() {
  final cuadrado = new Figura(10, 10);
  print(cuadrado);

  final rectangulo = new Figura(20, 40);
  print(rectangulo);
}