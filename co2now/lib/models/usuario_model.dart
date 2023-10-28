class UsuarioModel {
  late int id;
  late String nome;
  late String userName;
  late String passwordHash;
  late String role;

  UsuarioModel({
    required this.id,
    required this.nome,
    required this.userName,
    required this.passwordHash,
    required this.role,
  });

  UsuarioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    userName = json['userName'];
    passwordHash = json['passwordHash'];
    role = json['role'];
  }
}
