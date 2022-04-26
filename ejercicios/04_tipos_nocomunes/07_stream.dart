import 'dart:async';

void main() {

  /**
   * parecido a los observables rxjs
   * stream de una sola suscripcion con un solo parentesis
   * stream mas de una suscripcion usando el metodo broadcast
   */
  // final streamCtrl = new StreamController<String>();
  final streamCtrl = new StreamController<String>.broadcast();

  streamCtrl.stream.listen(
    (data) => print('iniciando $data'),
    onError: (error) => print('Error: $error'),
    onDone: () => print('fin del stream --- completo'),
    cancelOnError: false
  );

  streamCtrl.stream.listen(
    (data) => print('iniciando 2 $data'),
    onError: (error) => print('Error 2: $error'),
    onDone: () => print('fin del stream 2 --- completo'),
    cancelOnError: false
  );

  streamCtrl.sink.add('Apollo 13');
  streamCtrl.sink.add('Apollo 14');
  streamCtrl.sink.addError('tenemos un problema');
  streamCtrl.sink.add('Apollo 15');
  streamCtrl.sink.add('Apollo 16');

  streamCtrl.sink.close();

  print('fin del main function');
}