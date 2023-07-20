import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações referentes as corretoras ativas listadas na CVM.
class Brokerage {
  /// Informações disponíveis.
  Brokerage({
    this.cnpj,
    this.socialName,
    this.commercialName,
    this.neighborhood,
    this.cep,
    this.cvmCode,
    this.complement,
    this.dateCurrentSituation,
    this.dateNetWorth,
    this.dateRegistration,
    this.email,
    this.street,
    this.city,
    this.country,
    this.phone,
    this.uf,
    this.valueNetWorth,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Brokerage.fromJson(Map<String, dynamic> json) {
    return Brokerage(
      cnpj: json['cnpj'].toString(),
      socialName: json['nome_social'].toString(),
      commercialName: json['nome_comercial'].toString(),
      neighborhood: json['bairro'].toString(),
      cep: json['cep'].toString(),
      cvmCode: json['codigo_cvm'].toString(),
      complement: json['complemento'].toString(),
      dateCurrentSituation: json['data_inicio_situacao'].toString(),
      dateNetWorth: json['data_patrimonio_liquido'].toString(),
      dateRegistration: json['data_registro'].toString(),
      email: json['email'].toString(),
      street: json['logradouro'].toString(),
      city: json['municipio'].toString(),
      country: json['pais'].toString(),
      phone: json['telefone'].toString(),
      uf: json['uf'].toString(),
      valueNetWorth: json['valor_patrimonio_liquido'].toString(),
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
  final String? socialName;

  /// Nome comercial da corretora.
  final String? commercialName;

  /// Bairro registrado da corretora.
  final String? neighborhood;

  /// CEP registrado da corretora.
  final String? cep;

  /// Código CVM da corretora.
  final String? cvmCode;

  /// Complementos.
  final String? complement;

  /// Data de início situação da corretora.
  final String? dateCurrentSituation;

  /// Data de declaração do patrimônio líquido.
  final String? dateNetWorth;

  /// Data de registro da corretora.
  final String? dateRegistration;

  /// E-mail da corretora.
  final String? email;

  /// Logradouro da corretora.
  final String? street;

  /// Município da corretora.
  final String? city;

  /// País da corretora.
  final String? country;

  /// Telefone de contato da corretora.
  final String? phone;

  /// UF da corretora.
  final String? uf;

  /// Valor do patrimônio líquido da corretora.
  final String? valueNetWorth;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['cnpj'] = cnpj;
    data['nome_social'] = socialName;
    data['nome_comercial'] = commercialName;
    data['bairro'] = neighborhood;
    data['cep'] = cep;
    data['codigo_cvm'] = cvmCode;
    data['complemento'] = complement;
    data['data_inicio_situacao'] = dateCurrentSituation;
    data['data_patrimonio_liquido'] = dateNetWorth;
    data['data_registro'] = dateRegistration;
    data['email'] = email;
    data['logradouro'] = street;
    data['municipio'] = city;
    data['pais'] = country;
    data['telefone'] = phone;
    data['uf'] = uf;
    data['valor_patrimonio_liquido'] = valueNetWorth;
    return data;
  }

  /// Retorna as corretoras nos arquivos da CVM.
  static Future<List<Brokerage>> allBrokerageInformation() async {
    return _brApiRepository.filterAllBrokerageInformation();
  }

  /// Busca por corretoras através do CNPJ nos arquivos da CVM.
  static Future<Brokerage> searchBrokerageInformation({
    required String cnpj,
  }) async {
    return _brApiRepository.filterSearchBrokerageInformation(
      cnpj: cnpj,
    );
  }
}
