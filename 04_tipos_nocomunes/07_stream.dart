import 'dart:async';

void main() {
  final streamCtrl = StreamController();

  streamCtrl.stream.listen((data) {
    print('iniciando $data');
  });

  streamCtrl.sink.add('Apollo 13');

  print('fin del main function');
}