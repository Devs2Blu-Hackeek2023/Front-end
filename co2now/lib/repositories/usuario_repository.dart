import 'dart:convert';
import 'package:co2now/models/usuario_model.dart';
import 'package:http/http.dart' as http;

class UsuarioRepository {
  static Future<void> createUsuario(UsuarioModel usuario) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Usuario");
      final response = await http.post(
        uri,
        body: jsonEncode(usuario.toJson()),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 201) {
        // Usuário criado com sucesso
      } else {
        throw("Erro ao criar um novo usuário. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<UsuarioModel> getUsuarioById(int id) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Usuario/$id");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        UsuarioModel usuario = UsuarioModel.fromJson(data);
        return usuario;
      } else {
        throw("Erro ao obter o usuário. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }
}
