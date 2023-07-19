import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações de empresas por CNPJ.
class Company {
  /// Informações disponíveis.
  Company({
    this.cnpj,
    this.parentSubsidiaryIdentifier,
    this.descriptionSubsidiary,
    this.socialReason,
    this.tradingName,
    this.cadastralSituation,
    this.descriptionCadastralSituation,
    this.dateCadastralSituation,
    this.reasonCadastralSituation,
    this.nameCityExterior,
    this.juridicalNatureCode,
    this.dateStartActivity,
    this.cnaeFiscal,
    this.cnaeFiscalDesc,
    this.descStreetType,
    this.street,
    this.phone,
    this.complement,
    this.neighborhood,
    this.cep,
    this.uf,
    this.cityCode,
    this.city,
    this.dddPhone1,
    this.dddPhone2,
    this.dddFax,
    this.responsibleQualification,
    this.capitalSocial,
    this.companySize,
    this.descCompanySize,
    this.simpleOption,
    this.simpleOptionDate,
    this.dateExclusionSimples,
    this.optionMei,
    this.specialSituation,
    this.dateSpecialSituation,
    this.secondaryCnaes,
    this.qsa,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      cnpj: json['cnpj'].toString(),
      parentSubsidiaryIdentifier: json['identificador_matriz_filial'] as int?,
      descriptionSubsidiary: json['descricao_matriz_filial'].toString(),
      socialReason: json['razao_social'].toString(),
      tradingName: json['nome_fantasia'].toString(),
      cadastralSituation: json['situacao_cadastral'] as int?,
      descriptionCadastralSituation:
          json['descricao_situacao_cadastral'].toString(),
      dateCadastralSituation: json['data_situacao_cadastral'].toString(),
      reasonCadastralSituation: json['motivo_situacao_cadastral'] as int?,
      nameCityExterior: json['nome_cidade_exterior'].toString(),
      juridicalNatureCode: json['codigo_natureza_juridica'] as int?,
      dateStartActivity: json['data_inicio_atividade'].toString(),
      cnaeFiscal: json['cnae_fiscal'] as int?,
      cnaeFiscalDesc: json['cnae_fiscal_descricao'].toString(),
      descStreetType: json['descricao_tipo_logradouro'].toString(),
      street: json['logradouro'].toString(),
      phone: json['numero'].toString(),
      complement: json['complemento'].toString(),
      neighborhood: json['bairro'].toString(),
      cep: json['cep'].toString(),
      uf: json['uf'].toString(),
      cityCode: json['codigo_municipio'] as int?,
      city: json['municipio'].toString(),
      dddPhone1: json['ddd_telefone_1'].toString(),
      dddPhone2: json['ddd_telefone_2'].toString(),
      dddFax: json['ddd_fax'].toString(),
      responsibleQualification: json['qualificacao_do_responsavel'] as int?,
      capitalSocial: json['capital_social'] as int?,
      companySize: json['porte'].toString(),
      descCompanySize: json['descricao_porte'].toString(),
      simpleOption: json['opcao_pelo_simples'] as bool?,
      simpleOptionDate: json['data_opcao_pelo_simples'].toString(),
      dateExclusionSimples: json['data_exclusao_do_simples'].toString(),
      optionMei: json['opcao_pelo_mei'] as bool?,
      specialSituation: json['situacao_especial'].toString(),
      dateSpecialSituation: json['data_situacao_especial'].toString(),
      secondaryCnaes: json['cnaes_secundarios'] as List?,
      qsa: json['qsa'] as List?,
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
        'errors': json['errors'],
      },
    );
  }

  /// CNPJ da empresa.
  final String? cnpj;

  /// Código do identificador matriz/filial:
  /// `1` – MATRIZ
  /// `2` – FILIAL
  final int? parentSubsidiaryIdentifier;

  /// Descrição matriz/filial.
  final String? descriptionSubsidiary;

  /// Razão social da empresa.
  final String? socialReason;

  /// Nome fantasia da empresa.
  final String? tradingName;

  /// Situação cadastral da empresa:
  /// `01` – NULA
  /// `02` – ATIVA
  /// `03` – SUSPENSA
  /// `04` – INAPTA
  /// `08` – BAIXADA
  final int? cadastralSituation;

  /// Descrição situação cadastral.
  final String? descriptionCadastralSituation;

  /// Data da situação cadastral.
  final String? dateCadastralSituation;

  /// Código do motivo da situação cadastral.
  final int? reasonCadastralSituation;

  /// Nome da cidade no exterior.
  final String? nameCityExterior;

  /// Código da natureza jurídica
  final int? juridicalNatureCode;

  /// Data de início das atividades.
  final String? dateStartActivity;

  /// CNAE fiscal.
  final int? cnaeFiscal;

  /// Descrição do CNAE fiscal.
  final String? cnaeFiscalDesc;

  /// Descrição do tipo de logradouro.
  final String? descStreetType;

  /// Logradouro da empresa.
  final String? street;

  /// Número de contato da empresa.
  final String? phone;

  /// Complemento.
  final String? complement;

  /// Bairro da empresa.
  final String? neighborhood;

  /// CEP da empresa.
  final String? cep;

  /// UF da empresa.
  final String? uf;

  /// Código do município da empresa.
  final int? cityCode;

  /// Município da empresa.
  final String? city;

  /// DDD do telefone 1.
  final String? dddPhone1;

  /// DDD do telefone 2.
  final String? dddPhone2;

  /// DDD do FAX.
  final String? dddFax;

  /// Qualificação do responsável.
  final int? responsibleQualification;

  /// Capital social da empresa.
  final int? capitalSocial;

  /// Porte da empresa.
  final String? companySize;

  /// Descrição do porte.
  final String? descCompanySize;

  /// Opção pelo simples.
  final bool? simpleOption;

  /// Data da opção pelo simples.
  final String? simpleOptionDate;

  /// Data da exclusão do simples.
  final String? dateExclusionSimples;

  /// Opção pelo MEI.
  final bool? optionMei;

  /// Situação especial.
  final String? specialSituation;

  /// Data da situação especial.
  final String? dateSpecialSituation;

  /// CNAEs secundários.
  final List<dynamic>? secondaryCnaes;

  /// QSA.
  final List<dynamic>? qsa;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['cnpj'] = cnpj;
    data['parent_subsidiary_identifier'] = parentSubsidiaryIdentifier;
    data['description_subsidiary'] = descriptionSubsidiary;
    data['social_reason'] = socialReason;
    data['trading_name'] = tradingName;
    data['cadastral_situation'] = cadastralSituation;
    data['description_cadastral_situation'] = descriptionCadastralSituation;
    data['date_cadastral_situation'] = dateCadastralSituation;
    data['reason_cadastral_situation'] = reasonCadastralSituation;
    data['name_city_exterior'] = nameCityExterior;
    data['juridical_nature_code'] = juridicalNatureCode;
    data['date_start_activity'] = dateStartActivity;
    data['cnae_fiscal'] = cnaeFiscal;
    data['cnae_fiscal_desc'] = cnaeFiscalDesc;
    data['desc_street_type'] = descStreetType;
    data['street'] = street;
    data['phone'] = phone;
    data['complement'] = complement;
    data['neighborhood'] = neighborhood;
    data['cep'] = cep;
    data['uf'] = uf;
    data['city_code'] = cityCode;
    data['city'] = city;
    data['ddd_phone_1'] = dddPhone1;
    data['ddd_phone_2'] = dddPhone2;
    data['ddd_fax'] = dddFax;
    data['responsible_qualification'] = responsibleQualification;
    data['capital_social'] = capitalSocial;
    data['company_size'] = companySize;
    data['desc_company_size'] = descCompanySize;
    data['simple_option'] = simpleOption;
    data['simple_option_date'] = simpleOptionDate;
    data['date_exclusion_simples'] = dateExclusionSimples;
    data['option_mei'] = optionMei;
    data['special_situation'] = specialSituation;
    data['date_special_situation'] = dateSpecialSituation;
    data['secondary_cnaes'] = secondaryCnaes;
    data['qsa'] = qsa;
    return data;
  }

  /// Busca por CNPJ na API Minha Receita.
  static Future<Company> searchCnpj({required String cnpj}) async {
    return _brApiRepository.filterSearchCnpj(cnpj: cnpj);
  }
}
