main() {

  // operadores de asignacion
  int a = 10;
  
  int? b;
  
  b ??= 20; // asignar valor si la variables es nula;
  
  print(b);
  
  b = b != 20 ? 30 : 4;
  
  print(b);
  
  // operador condicional
  
  int c = 0;
  
  String response = c > 25 ? 'C es mayor a 25' : 'C es menor de 25';
  
  print(response);
  
  int? x;
  int? y;
  int z = 123;
  
  int d = x ?? y ?? z;
  
  print(d);
  
  
  // operadores relaciones
  /*
   * > mayor que
   * < menor que
   * >= mayor o igual
   * <= menor o igual
   * 
   * == si dos objetos son iguales
   * != si dos objetos son distintos 
   * 
   */
  
  String name = 'jose';
  String name2 = 'Ivan';
  
  print(name == name2);
  print(name != name2);
  
  
  int first = 123;
  int second = 222;
  
  print(first > second);
  print(first < second);
  
  print(first >= second);
  print(first <= second);
  
  // operador de tipo
  int i = 10;
  String j = '10';
  
  print(i is int);
  print(j is! int);
  
}