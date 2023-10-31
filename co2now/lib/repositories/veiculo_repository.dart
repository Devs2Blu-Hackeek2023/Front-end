import 'dart:convert';
import 'package:co2now/models/veiculo_model.dart';
import 'package:co2now/models/emissao_model.dart';
import 'package:http/http.dart' as http;

class VeiculoRepository {
  static Future<List<VeiculoModel>> getVeiculos() async {
    try {
      Uri uri = Uri.parse("https://api.co2now.devs2blu.dev.br/Veiculo");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        List<VeiculoModel> veiculos =
            data.map((e) => VeiculoModel.fromJson(e)).toList();
        return veiculos;
      } else {
        throw ("Erro ao obter veículos. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw ("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<VeiculoModel> getVeiculoById(int id) async {
    try {
      Uri uri = Uri.parse("https://api.co2now.devs2blu.dev.br/Veiculo/$id");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        VeiculoModel veiculo = VeiculoModel.fromJson(data);
        return veiculo;
      } else {
        throw ("Erro ao obter o veículo. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw ("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<void> updateVeiculo(int id, VeiculoModel veiculo) async {
    try {
      Uri uri = Uri.parse("https://api.co2now.devs2blu.dev.br/Veiculo/$id");
      final response = await http.put(
        uri,
        body: jsonEncode({
          "id": veiculo.id,
          "placa": veiculo.placa,
          "modelo": veiculo.modelo,
          "ano": veiculo.ano,
          "marca": veiculo.marca,
          "categoria": veiculo.categoria,
          "motor": veiculo.motor,
          "combustivel": veiculo.combustivel,
          "kmL": veiculo.kmL,
          "modificacoes": veiculo.modificacoes,
          "proprietarioId": veiculo.proprietarioId,
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode != 200) {
        throw ("Erro ao atualizar o veículo. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw ("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<List<EmissaoModel>> getEmissaoByVeiculoId(int id) async {
    try {
      Uri uri = Uri.parse(
          "https://api.co2now.devs2blu.dev.br/Veiculo/emissao/veiculo/$id/6meses");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        List<EmissaoModel> emissoes =
            data.map((e) => EmissaoModel.fromJson(e)).toList();
        return emissoes;
      } else {
        throw ("Erro ao obter emissões do veículo. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw ("Erro ao fazer a solicitação HTTP: $e");
    }
  }

  static Future<VeiculoModel> getVeiculoByPlaca(String placa) async {
    try {
      Uri uri =
          Uri.parse("https://api.co2now.devs2blu.dev.br/Veiculo/Placa/$placa");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        VeiculoModel veiculo = VeiculoModel.fromJson(data);
        return veiculo;
      } else {
        throw ("Erro ao obter o veículo pela placa. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      throw ("Erro ao fazer a solicitação HTTP: $e");
    }
  }
}
