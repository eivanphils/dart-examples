//funciones con Arguentos posicionales

void saludar(String lastName, [String mensaje = 'asd', int edad = 29]) {
  print('$mensaje $lastName - $edad');

}


// funciones con argumentos por nombre y posicionales a la vez
void saludar2(String name, String direccion, { required String lastName, int edad = 20}) {
  print('Saludar 2: $direccion - $name $lastName $edad');
}

main(List<String> args) {
  saludar('Garcia', 'Phils', 30);

  saludar2('Ivan', 'Nicasio retamales 48', lastName: 'garcia2', edad: 34);
}