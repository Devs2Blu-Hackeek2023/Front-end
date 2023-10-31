class RuaModel {
  late int id;
  late String cep;
  late int km;
  late String rua;
  late String bairro;
  late String cidade;
  late String uf;
  late String regiao;
  late int co2Total;

  RuaModel({
    required this.id,
    required this.cep,
    required this.km,
  });

  RuaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cep = json['cep'];
    km = json['km'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cep': cep,
      'km': km,
    };
  }
}
