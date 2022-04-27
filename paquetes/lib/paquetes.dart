import 'package:http/http.dart' as http;

import 'package:paquetes/classes/reqres_respuesta.dart';
import 'package:paquetes/classes/country.dart';

void getDatService() {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((response) {
    // print('Response $response');
    // final jsonResponse =
    //     convert.jsonDecode(response.body) as Map<String, dynamic>;
    // print('page: ${jsonResponse['total_pages']}');
    // print('per_page: ${jsonResponse['per_page']}');
    // print('data[3][id]: ${jsonResponse['data'][2]['id']}');

    final reqResRespuesta = reqResRespuestaFromJson(response.body);
    print('page: ${reqResRespuesta.page}');
    print('per_page: ${reqResRespuesta.perPage}');
    print('data[3][id]: ${reqResRespuesta.data[2].id}');
  });
}

void getCountryInformation() async {
  final url = Uri.parse('https://restcountries.com/v3.1/alpha/col');
  final response = await http.get(url);

  final country = countryFromJson(response.body);

  print('===========================');
  print('País: ${country.name.common}');
  print('Población: ${country.population}');
  print('Fronteras:');
  country.borders.forEach(print);
  print('Lenguajes: ${country.languages.spa}');
  print('Latitud: ${country.latlng[0]}');
  print('Longitud: ${country.latlng[1]}');
  print('Moneda: ${country.currencies.cop.name}');
  print('Bandera: ${country.flags.svg}');
  print('===========================');
}
