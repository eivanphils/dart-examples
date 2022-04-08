main() {

  outerLoop:
  for (int i = 0; i < 5; i++) {

    print('Valor de i: $i');
    print('--------------');
    
    innerLoop:
    for (int j = 0; j < 4; j++) {
      
      print('Valor de j: $j');

      if (j == 1) {
        break outerLoop;
      }
    }

    print('================');
    
  }
}