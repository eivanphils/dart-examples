main() {
    Future timeout = Future.delayed(Duration(seconds: 3), () {
        print('3 segundos despues print');
        return 'Retorno de mi future';
    });

    //forma normal
    timeout.then((response) => print(response));

    //forma simplificada
    timeout.then(print);

    print('fin del main');
}