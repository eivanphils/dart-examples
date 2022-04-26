void main() {
  List<int> list = [1, 2, 3, 4, 5];
  List<int>? list2;
  List<int> list3 = [11, 12, 43, 34, -5];
  List<String> list4 = [
    'Phils',
    'Ivan',
    'Jesus',
    'Anakin',
    'Obiwan',
    'Vader',
    'Ivan'
  ];

  print('Length: ${list.length}');
  print('First: ${list[0]}');
  print('First: ${list.first}');
  print('Last: ${list.last}');

  print('is empty: ${list.isEmpty}');
  print('is empty: ${list2 == null}');

  print('asMap ${list.asMap()}');

  Map<int, int> listMapa = list.asMap();
  print('ListMapa: ${listMapa[4]}');

  Map<int, String> listName = list4.asMap();
  print('Lista Nombre: ${listName[1]}');

  print('indeOf: ${list4.indexOf('Ivan', 2)}');

  int mayor3 = list.indexWhere((number) => number > 3);
  print('IndexWhere Número mayor 3 - index: $mayor3 - valor: ${list[mayor3]}');

  print('Remove: ${list4.remove('Ivan')}');
  print('Remove: $list4');

  list.shuffle();
  print('List shuffle: $list');

  list4.shuffle();
  print('list4 shuffle: $list4');

  list3.sort();
  print('List sort: $list3');
  print('List reversed: ${list3.reversed.toList()}');

  list4.forEach((name) {
    name = name.toUpperCase();
    print(name);
  });
  print(list4);

  // devuelve un iterable
  final newList = list4.map((name) => name = name.toUpperCase());

  // se convierte de nuevo a listado
  print(newList.toList());

}
