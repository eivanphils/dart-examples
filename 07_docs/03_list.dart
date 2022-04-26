void main() {
  List<int> list = [1, 2, 3, 4, 5];
  List<int>? list2;
  List<int> list3 = [11, 12, 43, 34, -5];
  List<String> list4 = ['Phils', 'Ivan'];

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
}
