class MiServicio {
  // definicion propiedad llamada singleton usando el _ para indicar que es privada
  // retorna una nueva instacia de la clase ya definida en el constructor privado
  // se mantiene en memoria la instancia de la clase creada usando la definicion static
  // Static - se usa para usar el mismo espacio en memoria y la propiedad definida es parte de la clase 
  static final MiServicio _singleton = new MiServicio._internal();

  // el contructor factory devuelve una propiedad static
  // la cual es una instacia de la clase a traves de una constructor privado
  factory MiServicio() {
    return _singleton;
  }

  String url = 'http://mipagina.web';
  String key = 'asdad';

  // definicion de contructor privado
  // 1 - genera una instancia de la clase
  MiServicio._internal();

  // Constructor publico
  // Miservicio();

  // Constructor con nombre
  // MiServicio.creatClass();
}