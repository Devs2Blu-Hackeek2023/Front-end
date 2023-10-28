import 'package:co2now/models/usuario_model.dart';

class ProprietarioModel {
  late int id;
  late String nomeCompleto;
  late String cpf;
  late String cnh;
  late int usuarioId;
  late UsuarioModel usuario;

  ProprietarioModel({
    required this.id,
    required this.nomeCompleto,
    required this.cpf,
    required this.cnh,
    required this.usuarioId,
    required this.usuario,
  });

  ProprietarioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeCompleto = json['nomeCompleto'];
    cpf = json['cpf'];
    cnh = json['cnh'];
    usuarioId = json['usuarioId'];
    usuario = UsuarioModel.fromJson(json['usuario']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nomeCompleto': nomeCompleto,
      'cpf': cpf,
      'cnh': cnh,
      'usuarioId': usuarioId,
      'usuario': usuario.toJson(),
    };
  }
}
