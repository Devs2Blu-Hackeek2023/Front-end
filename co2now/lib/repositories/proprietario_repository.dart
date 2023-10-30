import 'dart:convert';
import 'package:co2now/models/proprietario_model.dart';
import 'package:http/http.dart' as http;

class ProprietarioRepository {
  static Future<List<ProprietarioModel>> getProprietarios() async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Proprietario");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        List<ProprietarioModel> proprietarios = data.map((e) => ProprietarioModel.fromJson(e)).toList();
        return proprietarios;
      } else {
        throw("Erro ao obter proprietários. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<void> createProprietario(ProprietarioModel proprietario) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Proprietario");
      final response = await http.post(
        uri,
        body: jsonEncode(proprietario.toJson()),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 201) {
        // Proprietário criado com sucesso
      } else {
        throw("Erro ao criar um novo proprietário. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<ProprietarioModel> getProprietarioById(int id) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Proprietario/$id");
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

  static Future<void> deleteProprietario(int id) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Proprietario/$id");
      final response = await http.delete(uri);

      if (response.statusCode != 204) {
        throw("Erro ao excluir o proprietário. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }
}
