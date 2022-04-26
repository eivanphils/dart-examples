void main() {
  String name = 'Phils';
  String lastName = 'Garcia';

  String fullName = '$name' ' ' '$lastName';
  String fullName2 = '$name $lastName';
  print(fullName);
  print(fullName2);
  print('$fullName2 tiene ${fullName2.length} caracteres');
  print(
      'Operador substring: las primeras 3 letras de $lastName son ${lastName.substring(0, 3)}');
  print('$fullName contain G ${fullName.contains('G')}');

  print('Operador: $fullName [2] -- ${fullName[2]}');

  print('PadLeft: ${name.padLeft(12, ':')}');
  print('PadRight: ${name.padRight(12, ':')}');

  print('Operador *: ${name * 4}');
  print('Operador replaceAll: ${fullName.replaceAll(RegExp(r'a'), 'd')}');
  print('Operador substring: ${fullName.substring(0, 3)}...');
  print('Operador indexOf: ${fullName.indexOf('ar')}');

  List<String> strSplit = fullName.split('a');
  print('Operador split: ${strSplit}');
  print('Operador join: ${strSplit.join('a')}');

  print('Capitalizar ultima letra de nombre completo');
  print('${fullName[fullName.length - 1].toUpperCase()}');
}
