import 'dart:convert';
import 'package:co2now/models/rua_model.dart';
import 'package:http/http.dart' as http;

class RuaRepository {
  static Future<List<RuaModel>> getRuas() async {
    try {
      Uri uri = Uri.parse("https://api.co2now.devs2blu.dev.br/Rua");
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

  static Future<RuaModel> getRuaByCEP(String cep) async {
    try {
      Uri uri = Uri.parse("https://api.co2now.devs2blu.dev.br/Rua/$cep");
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

  static Future<List<dynamic>> getMaisPoluentes() async {
    try {
      Uri uri = Uri.parse("https://api.co2now.devs2blu.dev.br/Rua/MaisPoluentes");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        return data;
      } else {
        throw("Erro ao obter os dados dos poluentes. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<List<dynamic>> getEmissaoUltimos30Dias(int id) async {
    try {
      Uri uri = Uri.parse("https://api.co2now.devs2blu.dev.br/Rua/$id/emissao/ultimos/30dias");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        return data;
      } else {
        throw("Erro ao obter os dados de emissão dos últimos 30 dias. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }
}
