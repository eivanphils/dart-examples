void main() {
  int a = 15, b = 15;
  int result = arrowSum(a, b);

  print(result);

  List<int> list = [4,23,23,42,1,2,42,4,3,2,24,6,23];

  var newList = list.where((number) {
    return number > 4;
  });

  print(newList);

  var newList2 = list.where((n) => n > 4);

  print(newList2.toSet());

}

int sum(int x, int y) {
  return x + y;
}

int arrowSum(int x, int y) => x + y;