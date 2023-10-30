import 'dart:convert';
import 'package:co2now/models/emissao_model.dart';
import 'package:http/http.dart' as http;

class EmissaoRepository {
  static Future<void> createEmissao(EmissaoModel emissao) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/Emissao");
      final response = await http.post(
        uri,
        body: jsonEncode(emissao.toJson()),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 201) {
        // Emissão criada com sucesso
      } else {
        throw("Erro ao criar uma nova emissão. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<List<EmissaoModel>> getEmissao() async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/Emissao");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        List<EmissaoModel> emissoes = data.map((e) => EmissaoModel.fromJson(e)).toList();
        return emissoes;
      } else {
        throw("Erro ao obter emissões. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<void> deleteEmissao(int id) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/Emissao/$id");
      final response = await http.delete(uri);

      if (response.statusCode != 204) {
        throw("Erro ao excluir a emissão. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<EmissaoModel> getEmissaoById(int id) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/Emissao/$id");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        EmissaoModel emissao = EmissaoModel.fromJson(data);
        return emissao;
      } else {
        throw("Erro ao obter a emissão. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<void> updateEmissao(int id, EmissaoModel emissao) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/Emissao/$id");
      final response = await http.put(
        uri,
        body: jsonEncode(emissao.toJson()),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode != 204) {
        throw("Erro ao atualizar a emissão. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<int> getTotalEmissao() async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/Emissao/total");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return int.parse(response.body);
      } else {
        throw("Erro ao obter o total de emissões. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<int> getTotalEmissaoAno(int ano) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/Emissao/total/ano/$ano");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return int.parse(response.body);
      } else {
        throw("Erro ao obter o total de emissões por ano. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<int> getTotalEmissaoMesAno(int mes, int ano) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/Emissao/total/mes/$mes/ano/$ano");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return int.parse(response.body);
      } else {
        throw("Erro ao obter o total de emissões por mês e ano. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<int> getTotalEmissaoDiaMesAno(int dia, int mes, int ano) async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/Emissao/total/dia/$dia/mes/$mes/ano/$ano");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return int.parse(response.body);
      } else {
        throw("Erro ao obter o total de emissões por dia, mês e ano. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<EmissaoModel> getUltimaEmissaoAno() async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/Emissao/ultimo/ano");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        EmissaoModel emissao = EmissaoModel.fromJson(data);
        return emissao;
      } else {
        throw("Erro ao obter a última emissão do ano. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<EmissaoModel> getUltimaEmissaoMes() async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/Emissao/ultimo/mes");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        EmissaoModel emissao = EmissaoModel.fromJson(data);
        return emissao;
      } else {
        throw("Erro ao obter a última emissão do mês. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<EmissaoModel> getUltimaEmissaoDia() async {
    try {
      Uri uri = Uri.parse("https://co2now.devs2blu.dev.br/Emissao/ultimo/dia");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        EmissaoModel emissao = EmissaoModel.fromJson(data);
        return emissao;
      } else {
        throw("Erro ao obter a última emissão do dia. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw("Erro ao fazer a solicitação HTTP: $e");
    }
  }
}
