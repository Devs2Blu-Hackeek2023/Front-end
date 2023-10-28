import 'package:co2now/models/veiculo_model.dart';

class VeiculoRepository {
  static Future<void> createVeiculo(VeiculoModel veiculo) async {
    // Implementar a lógica para criar um novo veículo
  }

  static Future<List<VeiculoModel>> getVeiculos() async {
    // Implementar a lógica para obter todos os veículos
  }

  static Future<void> deleteVeiculo(int id) async {
    // Implementar a lógica para excluir um veículo pelo ID
  }

  static Future<VeiculoModel> getVeiculoById(int id) async {
    // Implementar a lógica para obter um veículo pelo ID
  }

  static Future<void> updateVeiculo(int id, VeiculoModel veiculo) async {
    // Implementar a lógica para atualizar um veículo pelo ID
  }

  static Future<List<EmissaoModel>> getEmissaoByVeiculoId(int id) async {
    // Implementar a lógica para obter emissões por ID de veículo
  }

  static Future<VeiculoModel> getVeiculoByPlaca(String placa) async {
    // Implementar a lógica para obter um veículo pela placa
  }
}
