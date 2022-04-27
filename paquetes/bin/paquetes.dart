// primero van los import del core de dart
// import 'dart:convert' as convert;

// segundo van los import de terceros
// import 'package:http/http.dart' as http;

// tercero van los import propios
import 'dart:io';

import 'package:paquetes/paquetes.dart' as paquetes;

void main(List<String> arguments) async {
  paquetes.getDatService();

  paquetes.getCountryInformation();
  
}
