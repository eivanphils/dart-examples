void main() {
  getUser('100', (Map<String, String> persona) {
    print(persona);
  });
}

void getUser(String id, Function callback) {
  Map<String, String> user = {
    'name': 'Phils Garcia',
    'id': id
  };

  callback(user);
}