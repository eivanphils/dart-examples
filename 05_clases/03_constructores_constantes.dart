class Location {
  // final crear una instacia nueva
  final double lat, lng;

  // se crea en memoria en tiempo de ejecucion y es la misma instacia o hace referencia a la misma
  const Location(this.lat, this.lng);
}

void main() {
  final address1 = new Location(23.123213, 45.00000);
  final address2 = new Location(23.123213, 45.12322);
  final address3 = new Location(23.123213, 45.12322);

  print(address1 == address2); // false
  print(address2 == address3); // false

  const address434 = const Location(23.123213, 45.00000);
  const address4 = const Location(23.123213, 45.12322);
  const address5 = const Location(23.123213, 45.12322);

  print(address434 == address4); // false
  print(address4 == address5); // true

}