import 'package:co2now/models/rua_model.dart';

class RuaRepository {
  static Future<List<RuaModel>> getRuas() async {
    // Implementar a lógica para obter todas as ruas
  }

  static Future<void> createRua(RuaModel rua) async {
    // Implementar a lógica para criar uma nova rua
  }

  static Future<RuaModel> getRuaById(int id) async {
    // Implementar a lógica para obter uma rua pelo ID
  }

  static Future<void> updateRua(int id, RuaModel rua) async {
    // Implementar a lógica para atualizar uma rua pelo ID
  }

  static Future<RuaModel> getRuaByCEP(String cep) async {
    // Implementar a lógica para obter uma rua pelo CEP
  }

  static Future<int> getTotalRuas() async {
    // Implementar a lógica para obter o total de ruas
  }

  static Future<int> getTotalRuasAno(int id) async {
    // Implementar a lógica para obter o total de ruas por ano
  }

  static Future<int> getTotalRuasMes(int id) async {
    // Implementar a lógica para obter o total de ruas por mês
  }
}
