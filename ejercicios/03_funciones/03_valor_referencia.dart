// argumentos por valor
String capitalize(String text) {
  text  = text.toUpperCase();
  return text;
}

//argumentos por referencia
Map<String, String> capitalizeMap(Map<String, String> map) {

  // rompiendo la referencia del objeto
  map = { ...map};

  map['name'] = map['name']?.toUpperCase() ?? 'No hay nombre';
  return map;
}

void main(List<String> args) {
  String name = 'phils';
  String name2 = capitalize(name);
  print(name);
  print(name2);

  Map<String, String> person = {
    'name': 'Phils Garcia'
  };
  Map<String, String> person2 = capitalizeMap(person);

  print(person);
  print(person2);
}