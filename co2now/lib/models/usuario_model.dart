class UsuarioModel {
  int? id;
  late String nome;
  late String username;
  late String password;
  String? cargo;

  UsuarioModel({
    this.id,
    required this.nome,
    required this.username,
    required this.password,
    this.cargo,
  });

  UsuarioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    username = json['username'];
    password = json['password'];
    cargo = json['cargo'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'username': username,
      'password': password,
      'cargo': cargo,
    };
  }
}
