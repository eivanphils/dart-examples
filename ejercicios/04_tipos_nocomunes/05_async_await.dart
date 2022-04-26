import 'dart:io';

main() async {
  String path = '${Directory.current.path}/ejercicios/04_tipos_nocomunes/assets/personas.txt';

  print('asyncText');
  String asyncText = await readFile(path);

  print(asyncText);

  print('syncText');

  String syncText = readFileAsync(path);

  print(syncText);

  print('fin del main');
}

/**
 * Future son como las promesas
 * readAsString retorna un future que resuelve un string - tipo asincrona
 */
Future<String> readFile(String path) async {
  File file = new File(path);
  return file.readAsString();
}

/**
 * readAsStringSync retorna un string - tipo sincrono
 */
String readFileAsync(String path) {
  File file = new File(path);
  return file.readAsStringSync();
}