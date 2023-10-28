class RuaModel {
  late int id;
  late String cep;
  late int comprimento;

  RuaModel({
    required this.id,
    required this.cep,
    required this.comprimento,
  });

  RuaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cep = json['cep'];
    comprimento = json['comprimento'];
  }
}
