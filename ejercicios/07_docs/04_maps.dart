void main() {
  final persona = {'nombre': 'phils', 'apellido': 'garcia', 'edad': 29};
  final direccion = {'ciudad': 'santiago', 'comuna': 'estacion central'};

  print('Persona: ${persona}');
  print('Length: ${persona.length}');
  print('Keys: ${persona.keys}');
  print('Values: ${persona.values}');

  persona.addAll(direccion);
  print('AddAll: ${persona}');

  persona.remove('ciudad');
  print('Remove: ${persona}');

  persona.addAll(direccion);
  print('AddAll: ${persona}');

  persona.removeWhere((key, value) => direccion.containsKey(key));
  print('RemoveWhere: ${persona}');

  persona.addAll(direccion);
  persona.forEach((key, value) {
    print('Key: $key  value: $value');
  });

  final personaMap = persona.map((key, value) {
    value = value.toString().toUpperCase();
    return MapEntry(key, value);
  });

  print('Method map: $personaMap');
}
