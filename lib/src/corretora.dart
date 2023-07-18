import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações referentes a Corretoras ativas listadas na CVM.
class Corretora {
  /// Informações disponíveis.
  Corretora({
    required this.cnpj,
    required this.nomeSocial,
    required this.nomeComercial,
    required this.bairro,
    required this.cep,
    required this.codigoCvm,
    required this.complemento,
    required this.dataInicioAtuacao,
    required this.dataPatrimonioLiquido,
    required this.dataRegistro,
    required this.email,
    required this.logradouro,
    required this.municipio,
    required this.pais,
    required this.telefone,
    required this.uf,
    required this.valorPatrimonioLiquido,
    required this.errors,
  });

  /// Obter os dados por um json.
  factory Corretora.fromJson(Map<String, dynamic> json) {
    return Corretora(
      cnpj: json['cnpj'].toString(),
      nomeSocial: json['nomeSocial'].toString(),
      nomeComercial: json['nomeComercial'].toString(),
      bairro: json['bairro'].toString(),
      cep: json['cep'].toString(),
      codigoCvm: json['codigoCvm'].toString(),
      complemento: json['complemento'].toString(),
      dataInicioAtuacao: json['dataInicioAtuacao'].toString(),
      dataPatrimonioLiquido: json['dataPatrimonioLiquido'].toString(),
      dataRegistro: json['dataRegistro'].toString(),
      email: json['email'].toString(),
      logradouro: json['logradouro'].toString(),
      municipio: json['municipio'].toString(),
      pais: json['pais'].toString(),
      telefone: json['telefone'].toString(),
      uf: json['uf'].toString(),
      valorPatrimonioLiquido: json['valorPatrimonioLiquido'].toString(),
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  final String? cnpj;
  final String? nomeSocial;
  final String? nomeComercial;
  final String? bairro;
  final String? cep;
  final String? codigoCvm;
  final String? complemento;
  final String? dataInicioAtuacao;
  final String? dataPatrimonioLiquido;
  final String? dataRegistro;
  final String? email;
  final String? logradouro;
  final String? municipio;
  final String? pais;
  final String? telefone;
  final String? uf;
  final String? valorPatrimonioLiquido;
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['cnpj'] = cnpj;
    data['nomeSocial'] = nomeSocial;
    data['nomeComercial'] = nomeComercial;
    data['bairro'] = bairro;
    data['cep'] = cep;
    data['codigoCvm'] = codigoCvm;
    data['complemento'] = complemento;
    data['dataInicioAtuacao'] = dataInicioAtuacao;
    data['dataPatrimonioLiquido'] = dataPatrimonioLiquido;
    data['dataRegistro'] = dataRegistro;
    data['email'] = email;
    data['logradouro'] = logradouro;
    data['municipio'] = municipio;
    data['pais'] = pais;
    data['telefone'] = telefone;
    data['uf'] = uf;
    data['valorPatrimonioLiquido'] = valorPatrimonioLiquido;
    return data;
  }

  /// Retorna as corretoras nos arquivos da CVM.
  static Future<List<Corretora>> allCorretoraInformation() async {
    return _brApiRepository.filterAllCorretoraInformation();
  }

  /// Busca por corretoras através do CNPJ nos arquivos da CVM.
  static Future<Corretora> searchCorretoraInformation({
    required String cnpj,
  }) async {
    return _brApiRepository.filterSearchCorretoraInformation(
      cnpj: cnpj,
    );
  }
}
