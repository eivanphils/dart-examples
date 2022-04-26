class Herramientas {
  // la palabra [static] permite que se las propiedades o métodos sean parte de la clase
  // y permite que se puedan acceder sin crear una instancia de la clase
  static const List<String> listado = ['Martillo', 'mazo', 'destornillador'];

  static void imprimirListado() => listado.forEach(print);
}

void main() {
  // instancia de la clase Herramientas
  // final herramientas = new Herramientas();

  // Esto retorna un error ya que no se puede modificar el listado static ya que es una constante
  // Herramientas.listado.add('qdqwd');

  // impresion desde listado tipo static
  // Herramientas.listado.forEach(print);

  // uso de metodo dentro de la clase sin tener que crear una instacion de la misma
  Herramientas.imprimirListado();

}