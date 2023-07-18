import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações de empresas por CNPJ.
class Cnpj {
  /// Informações disponíveis.
  Cnpj({
    this.cnpj,
    this.identificadorMatrizFilial,
    this.descricaoMatrizFilial,
    this.razaoSocial,
    this.nomeFantasia,
    this.situacaoCadastral,
    this.descricaoSituacaoCadastral,
    this.dataSituacaoCadastral,
    this.motivoSituacaoCadastral,
    this.nomeCidadeExterior,
    this.codigoNaturezaJuridica,
    this.dataInicioAtividade,
    this.cnaeFiscal,
    this.cnaeFiscalDescricao,
    this.descricaoTipoLogradouro,
    this.logradouro,
    this.numero,
    this.complemento,
    this.bairro,
    this.cep,
    this.uf,
    this.codigoMunicipio,
    this.municipio,
    this.dddTelefone1,
    this.dddTelefone2,
    this.dddFax,
    this.qualificacaoDoResponsavel,
    this.capitalSocial,
    this.porte,
    this.descricaoPorte,
    this.opcaoPeloSimples,
    this.dataOpcaoPeloSimples,
    this.dataExclusaoDoSimples,
    this.opcaoPeloMei,
    this.situacaoEspecial,
    this.dataSituacaoEspecial,
    this.cnaesSecundarios,
    this.qsa,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Cnpj.fromJson(Map<String, dynamic> json) {
    return Cnpj(
      cnpj: json['cnpj'].toString(),
      identificadorMatrizFilial: json['identificador_matriz_filial'] as int?,
      descricaoMatrizFilial: json['descricao_matriz_filial'].toString(),
      razaoSocial: json['razao_social'].toString(),
      nomeFantasia: json['nome_fantasia'].toString(),
      situacaoCadastral: json['situacao_cadastral'] as int?,
      descricaoSituacaoCadastral:
          json['descricao_situacao_cadastral'].toString(),
      dataSituacaoCadastral: json['data_situacao_cadastral'].toString(),
      motivoSituacaoCadastral: json['motivo_situacao_cadastral'] as int?,
      nomeCidadeExterior: json['nome_cidade_exterior'].toString(),
      codigoNaturezaJuridica: json['codigo_natureza_juridica'] as int?,
      dataInicioAtividade: json['data_inicio_atividade'].toString(),
      cnaeFiscal: json['cnae_fiscal'] as int?,
      cnaeFiscalDescricao: json['cnae_fiscal_descricao'].toString(),
      descricaoTipoLogradouro: json['descricao_tipo_logradouro'].toString(),
      logradouro: json['logradouro'].toString(),
      numero: json['numero'].toString(),
      complemento: json['complemento'].toString(),
      bairro: json['bairro'].toString(),
      cep: json['cep'].toString(),
      uf: json['uf'].toString(),
      codigoMunicipio: json['codigo_municipio'] as int?,
      municipio: json['municipio'].toString(),
      dddTelefone1: json['ddd_telefone_1'].toString(),
      dddTelefone2: json['ddd_telefone_2'].toString(),
      dddFax: json['ddd_fax'].toString(),
      qualificacaoDoResponsavel: json['qualificacao_do_responsavel'] as int?,
      capitalSocial: json['capital_social'] as int?,
      porte: json['porte'].toString(),
      descricaoPorte: json['descricao_porte'].toString(),
      opcaoPeloSimples: json['opcao_pelo_simples'] as bool?,
      dataOpcaoPeloSimples: json['data_opcao_pelo_simples'].toString(),
      dataExclusaoDoSimples: json['data_exclusao_do_simples'].toString(),
      opcaoPeloMei: json['opcao_pelo_mei'] as bool?,
      situacaoEspecial: json['situacao_especial'].toString(),
      dataSituacaoEspecial: json['data_situacao_especial'].toString(),
      cnaesSecundarios: json['cnaes_secundarios'] as List?,
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
  final int? identificadorMatrizFilial;

  /// Descrição matriz/filial.
  final String? descricaoMatrizFilial;

  /// Razão social da empresa.
  final String? razaoSocial;

  /// Nome fantasia da empresa.
  final String? nomeFantasia;

  /// Situação cadastral da empresa:
  /// `01` – NULA
  /// `02` – ATIVA
  /// `03` – SUSPENSA
  /// `04` – INAPTA
  /// `08` – BAIXADA
  final int? situacaoCadastral;

  /// Descrição situação cadastral.
  final String? descricaoSituacaoCadastral;

  /// Data da situação cadastral.
  final String? dataSituacaoCadastral;

  /// Código do motivo da situação cadastral.
  final int? motivoSituacaoCadastral;

  /// Nome da cidade no exterior.
  final String? nomeCidadeExterior;

  /// Código da natureza jurídica
  final int? codigoNaturezaJuridica;

  /// Data de início das atividades.
  final String? dataInicioAtividade;

  /// CNAE fiscal.
  final int? cnaeFiscal;

  /// Descrição do CNAE fiscal.
  final String? cnaeFiscalDescricao;

  /// Descrição do tipo de logradouro.
  final String? descricaoTipoLogradouro;

  /// Logradouro da empresa.
  final String? logradouro;

  /// Número de contato da empresa.
  final String? numero;

  /// Complemento.
  final String? complemento;

  /// Bairro da empresa.
  final String? bairro;

  /// CEP da empresa.
  final String? cep;

  /// UF da empresa.
  final String? uf;

  /// Código do município da empresa.
  final int? codigoMunicipio;

  /// Município da empresa.
  final String? municipio;

  /// DDD do telefone 1.
  final String? dddTelefone1;

  /// DDD do telefone 2.
  final String? dddTelefone2;

  /// DDD do FAX.
  final String? dddFax;

  /// Qualificação do responsável.
  final int? qualificacaoDoResponsavel;

  /// Capital social da empresa.
  final int? capitalSocial;

  /// Porte da empresa.
  final String? porte;

  /// Descrição do porte.
  final String? descricaoPorte;

  /// Opção pelo simples.
  final bool? opcaoPeloSimples;

  /// Data da opção pelo simples.
  final String? dataOpcaoPeloSimples;

  /// Data da exclusão do simples.
  final String? dataExclusaoDoSimples;

  /// Opção pelo MEI.
  final bool? opcaoPeloMei;

  /// Situação especial.
  final String? situacaoEspecial;

  /// Data da situação especial.
  final String? dataSituacaoEspecial;

  /// CNAEs secundários.
  final List<dynamic>? cnaesSecundarios;

  /// QSA.
  final List<dynamic>? qsa;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['cnpj'] = cnpj;
    data['identificador_matriz_filial'] = identificadorMatrizFilial;
    data['descricao_matriz_filial'] = descricaoMatrizFilial;
    data['razao_social'] = razaoSocial;
    data['nome_fantasia'] = nomeFantasia;
    data['situacao_cadastral'] = situacaoCadastral;
    data['descricao_situacao_cadastral'] = descricaoSituacaoCadastral;
    data['data_situacao_cadastral'] = dataSituacaoCadastral;
    data['motivo_situacao_cadastral'] = motivoSituacaoCadastral;
    data['nome_cidade_exterior'] = nomeCidadeExterior;
    data['codigo_natureza_juridica'] = codigoNaturezaJuridica;
    data['data_inicio_atividade'] = dataInicioAtividade;
    data['cnae_fiscal'] = cnaeFiscal;
    data['cnae_fiscal_descricao'] = cnaeFiscalDescricao;
    data['descricao_tipo_logradouro'] = descricaoTipoLogradouro;
    data['logradouro'] = logradouro;
    data['numero'] = numero;
    data['complemento'] = complemento;
    data['bairro'] = bairro;
    data['cep'] = cep;
    data['uf'] = uf;
    data['codigo_municipio'] = codigoMunicipio;
    data['municipio'] = municipio;
    data['ddd_telefone_1'] = dddTelefone1;
    data['ddd_telefone_2'] = dddTelefone2;
    data['ddd_fax'] = dddFax;
    data['qualificacao_do_responsavel'] = qualificacaoDoResponsavel;
    data['capital_social'] = capitalSocial;
    data['porte'] = porte;
    data['descricao_porte'] = descricaoPorte;
    data['opcao_pelo_simples'] = opcaoPeloSimples;
    data['data_opcao_pelo_simples'] = dataOpcaoPeloSimples;
    data['data_exclusao_do_simples'] = dataExclusaoDoSimples;
    data['opcao_pelo_mei'] = opcaoPeloMei;
    data['situacao_especial'] = situacaoEspecial;
    data['data_situacao_especial'] = dataSituacaoEspecial;
    data['cnaes_secundarios'] = cnaesSecundarios;
    data['qsa'] = qsa;
    return data;
  }

  /// Busca por CNPJ na API Minha Receita.
  static Future<Cnpj> searchCnpj({required String cnpj}) async {
    return _brApiRepository.filterSearchCnpj(cnpj: cnpj);
  }
}
