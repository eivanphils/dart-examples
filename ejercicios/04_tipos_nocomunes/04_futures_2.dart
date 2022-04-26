import 'dart:io';

main() {
    File file = new File('${Directory.current.path}/ejercicios/04_tipos_nocomunes/assets/personas.txt');

    Future<String> f = file.readAsString();

    f.then(print);

    String f2 = file.readAsStringSync();

    print(f2);

    print('fin del main');
}