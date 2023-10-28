import 'package:co2now/models/rua_model.dart';
import 'package:co2now/models/veiculo_model.dart';

class EmissaoModel {
  late int id;
  late String dataInicio;
  late String dataFim;
  late double co2;
  late int veiculoId;
  late VeiculoModel veiculo;
  late int ruaId;
  late RuaModel rua;

  EmissaoModel({
    required this.id,
    required this.dataInicio,
    required this.dataFim,
    required this.co2,
    required this.veiculoId,
    required this.veiculo,
    required this.ruaId,
    required this.rua,
  });

  EmissaoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dataInicio = json['dataInicio'];
    dataFim = json['dataFim'];
    co2 = json['cO2'].toDouble();
    veiculoId = json['veiculoId'];
    veiculo = VeiculoModel.fromJson(json['veiculo']);
    ruaId = json['ruaId'];
    rua = RuaModel.fromJson(json['rua']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'dataInicio': dataInicio,
      'dataFim': dataFim,
      'cO2': co2,
      'veiculoId': veiculoId,
      'ruaId': ruaId,
    };
  }
}
