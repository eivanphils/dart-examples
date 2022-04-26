main() {
    Future timeout = Future.delayed(Duration(seconds: 3), () {
        if (1 == 1) {
          throw 'Fallo la app';
        }
        return 'Retorno de mi future';
    });

    //forma normal
    timeout
      .then(print)
      .catchError(print);

    print('fin del main');
}