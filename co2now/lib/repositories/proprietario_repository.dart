import 'dart:convert';
import 'package:co2now/models/proprietario_model.dart';
import 'package:http/http.dart' as http;

class ProprietarioRepository {
  static Future<void> createProprietario(String nome, String cpf, String cnh, int usuarioId) async {
    try {
      Uri uri = Uri.parse("https://api.co2now.devs2blu.dev.br/Proprietario");
      final response = await http.post(
        uri,
        body: jsonEncode({
          "nomeCompleto": nome,
          "cpf": cpf,
          "cnh": cnh,
          "usuarioId": usuarioId
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        // Proprietário criado com sucesso
      } else {
        throw("Erro ao criar um novo proprietário. Status Code: ${response.body}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<ProprietarioModel> getProprietarioById(int id) async {
    try {
      Uri uri = Uri.parse("https://api.co2now.devs2blu.dev.br/Proprietario/Id?Id=$id");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        ProprietarioModel proprietario = ProprietarioModel.fromJson(data);
        return proprietario;
      } else {
        throw("Erro ao obter o proprietário. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

}
