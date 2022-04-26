class Cuadrado {
  // se declara final si desea que la propiedad sea inmutable
  final int lado;
  final int area;


  // necesito calcular el area multiplicando lado * lado
  // Cuadrado(this.lado, this.area);

  // no se puede setear de esta manera ya que las varialbes son de tipo final
  // Cuadrado(lado, this.area){
  //   this.lado = lado;
  // }

  Cuadrado(int lado):
    this.lado = lado,
    this.area = lado * lado;

  String printCuadrado() => 'El lado es $lado y su area es $area';

}

void main() {

  final miCuadrado = new Cuadrado(4);

  print(miCuadrado.lado);
  print(miCuadrado.area);
  print(miCuadrado.printCuadrado());
  
}