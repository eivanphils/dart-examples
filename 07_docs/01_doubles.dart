void main() {
  double number = 3.54123213;
  double infinito = double.infinity;

  print('Firm: ${number.sign} ::: $number');
  print(number.isFinite);
  print(number.abs());
  print('Ceil $number ::: ${number.ceil()}');
  print('Ceil toDouble $number ::: ${number.ceilToDouble()}');
  print('round $number ::: ${number.round()}');
  print('roundToDouble $number ::: ${number.roundToDouble()}');
  print('clap $number ::: ${number.clamp(1,3)}');
  print(number.isNaN);
  print(number.hashCode);
  print(number.isInfinite);
  print(number.isNegative);
  print(number.runtimeType);
  print('infinito: ${infinito.isFinite} ::: $infinito');
}
