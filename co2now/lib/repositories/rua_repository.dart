import 'dart:convert';
import 'package:co2now/models/rua_model.dart';
import 'package:http/http.dart' as http;

class RuaRepository {
  static Future<List<RuaModel>> getRuas() async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Rua");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        List<RuaModel> ruas = data.map((e) => RuaModel.fromJson(e)).toList();
        return ruas;
      } else {
        throw("Erro ao obter ruas. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<void> createRua(RuaModel rua) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Rua");
      final response = await http.post(
        uri,
        body: jsonEncode(rua.toJson()),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 201) {
        // Rua criada com sucesso
      } else {
        throw("Erro ao criar uma nova rua. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<RuaModel> getRuaById(int id) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Rua/$id");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        RuaModel rua = RuaModel.fromJson(data);
        return rua;
      } else {
        throw("Erro ao obter a rua. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<void> updateRua(int id, RuaModel rua) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Rua/$id");
      final response = await http.put(
        uri,
        body: jsonEncode(rua.toJson()),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode != 204) {
        throw("Erro ao atualizar a rua. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<RuaModel> getRuaByCEP(String cep) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Rua/$cep");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        RuaModel rua = RuaModel.fromJson(data);
        return rua;
      } else {
        throw("Erro ao obter a rua pelo CEP. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<int> getTotalRuas() async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Rua/Total");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return int.parse(response.body);
      } else {
        throw("Erro ao obter o total de ruas. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<int> getTotalRuasAno(int id) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Rua/$id/Ano");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return int.parse(response.body);
      } else {
        throw("Erro ao obter o total de ruas por ano. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<int> getTotalRuasMes(int id) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/api/Rua/$id/Mes");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return int.parse(response.body);
      } else {
        throw("Erro ao obter o total de ruas por mês. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }
}
