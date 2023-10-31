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
    required this.rua,
    required this.bairro,
    required this.cidade,
    required this.uf,
    required this.regiao,
  });

  RuaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cep = json['cep'];
    km = json['km'];
    rua = json['rua'];
    bairro = json['bairro'];
    cidade = json['cidade'];
    uf = json['uf'];
    regiao = json['regiao'];
    co2Total = json['co2Total'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cep': cep,
      'km': km,
      'rua': rua,
      'bairro': bairro,
      'cidade': cidade,
      'uf': uf,
      'regiao': regiao,
    };
  }
}
