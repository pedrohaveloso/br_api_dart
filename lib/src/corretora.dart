import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações referentes as corretoras ativas listadas na CVM.
class Corretora {
  /// Informações disponíveis.
  Corretora({
    this.cnpj,
    this.nomeSocial,
    this.nomeComercial,
    this.bairro,
    this.cep,
    this.codigoCvm,
    this.complemento,
    this.dataInicioSituacao,
    this.dataPatrimonioLiquido,
    this.dataRegistro,
    this.email,
    this.logradouro,
    this.municipio,
    this.pais,
    this.telefone,
    this.uf,
    this.valorPatrimonioLiquido,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Corretora.fromJson(Map<String, dynamic> json) {
    return Corretora(
      cnpj: json['cnpj'].toString(),
      nomeSocial: json['nome_social'].toString(),
      nomeComercial: json['nome_comercial'].toString(),
      bairro: json['bairro'].toString(),
      cep: json['cep'].toString(),
      codigoCvm: json['codigo_cvm'].toString(),
      complemento: json['complemento'].toString(),
      dataInicioSituacao: json['data_inicio_situacao'].toString(),
      dataPatrimonioLiquido: json['data_patrimonio_liquido'].toString(),
      dataRegistro: json['data_registro'].toString(),
      email: json['email'].toString(),
      logradouro: json['logradouro'].toString(),
      municipio: json['municipio'].toString(),
      pais: json['pais'].toString(),
      telefone: json['telefone'].toString(),
      uf: json['uf'].toString(),
      valorPatrimonioLiquido: json['valor_patrimonio_liquido'].toString(),
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  /// CNPJ da corretora.
  final String? cnpj;

  /// Nome social da corretora.
  final String? nomeSocial;

  /// Nome comercial da corretora.
  final String? nomeComercial;

  /// Bairro registrado da corretora.
  final String? bairro;

  /// CEP registrado da corretora.
  final String? cep;

  /// Código CVM da corretora.
  final String? codigoCvm;

  /// Complementos.
  final String? complemento;

  /// Data de início situação da corretora.
  final String? dataInicioSituacao;

  /// Data de declaração do patrimônio líquido.
  final String? dataPatrimonioLiquido;

  /// Data de registro da corretora.
  final String? dataRegistro;

  /// E-mail da corretora.
  final String? email;

  /// Logradouro da corretora.
  final String? logradouro;

  /// Município da corretora.
  final String? municipio;

  /// País da corretora.
  final String? pais;

  /// Telefone de contato da corretora.
  final String? telefone;

  /// UF da corretora.
  final String? uf;

  /// Valor do patrimônio líquido da corretora.
  final String? valorPatrimonioLiquido;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['cnpj'] = cnpj;
    data['nome_social'] = nomeSocial;
    data['nome_comercial'] = nomeComercial;
    data['bairro'] = bairro;
    data['cep'] = cep;
    data['codigo_cvm'] = codigoCvm;
    data['complemento'] = complemento;
    data['data_inicio_situacao'] = dataInicioSituacao;
    data['data_patrimonio_liquido'] = dataPatrimonioLiquido;
    data['data_registro'] = dataRegistro;
    data['email'] = email;
    data['logradouro'] = logradouro;
    data['municipio'] = municipio;
    data['pais'] = pais;
    data['telefone'] = telefone;
    data['uf'] = uf;
    data['valor_patrimonio_liquido'] = valorPatrimonioLiquido;
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
