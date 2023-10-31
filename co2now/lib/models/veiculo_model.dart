import 'package:co2now/models/proprietario_model.dart';

class VeiculoModel {
  late int id;
  late String placa;
  late String modelo;
  late int ano;
  late String marca;
  late String categoria;
  late String motor;
  late String combustivel;
  late int kmL;
  late int proprietarioId;
  ProprietarioModel? proprietario;
  late String modificacoes;

  VeiculoModel({
    required this.id,
    required this.placa,
    required this.modelo,
    required this.ano,
    required this.marca,
    required this.categoria,
    required this.motor,
    required this.combustivel,
    required this.kmL,
    required this.proprietarioId,
    this.proprietario,
    required this.modificacoes,
  });

  VeiculoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    placa = json['placa'];
    modelo = json['modelo'];
    ano = json['ano'];
    marca = json['marca'];
    categoria = json['categoria'];
    motor = json['motor'];
    combustivel = json['combustivel'];
    kmL = json['kmL'];
    proprietarioId = json['proprietarioId'];
    // proprietario = ProprietarioModel.fromJson(json['proprietario']);
    modificacoes = json['modificacoes'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'placa': placa,
      'modelo': modelo,
      'ano': ano,
      'marca': marca,
      'categoria': categoria,
      'motor': motor,
      'combustivel': combustivel,
      'kmL': kmL,
      'proprietarioId': proprietarioId,
      // 'proprietario': proprietario!.toJson(),
      'modificacoes': modificacoes,
    };
  }
}
