main() {
  // ===== números

  int a = 10;
  double b = 10.34;
  int? c;
  int? d;
  

  print(a);
  print(b);
  print(c);
  print(d);
  
  
  // ====== string
  
  String name = 'Phils';
  String? name2;
  String name3 = "Hola $name";
  
  String multilinea = '''
  
  Hola mundo
  como estas?
  demo dart
  multilineas
  
  name3 = $name3  
  
  ''';
  
  print(name.compareTo('$name3'));
  print(name);
  print(name2);
  print(name3);
  print(multilinea);
  
  // ======== bool
  
  bool isActive = true;
  bool isNotActive = !isActive;
  
  print(isActive);
  print(isNotActive);

  // =============== Lists
  
  List<String> villanos = ['Uno', 'Goku']; // son base 0
  
  villanos.add('joker');
  
  villanos[0] = 'thanos';
  
  villanos[1] = 'voldermort';
  
  villanos.add('joker');
  villanos.add('joker');
  villanos.add('joker');
  villanos.add('joker');
  
  print('List String: $villanos');
  
  var villanosSet = villanos.toSet();
  
  print(villanosSet.toList());
  
  // ================ sets
  
  Set<String> villanos2 = { 'thanos', 'voldermor'};
  
  villanos2.add('jocker');
  villanos2.add('jocker');
  villanos2.add('jocker');
  villanos2.add('d');
  
  print('Sets: $villanos2');

  // ======== Maps

  Map<String, dynamic> anakin = {
    'lastName': 'skywalker',
    'weapon': 'lightsaber',
    'faction': 'dark side',
  };
  
  print(anakin);
  
  print(anakin['lastName']);
  print(anakin['faction']);
   
  // otra forma de definir una variable tipo Map
  
 Map<String, dynamic> obiwan = new Map();

  obiwan.addAll({
    'lastName': 'kenobi',
    'weapon': 'lightsaber',
    'faction': 'light side',
  });
  
  print(obiwan);
  print(obiwan.values);
  print(obiwan['lastName']);
  print(obiwan['faction']);
  

}
