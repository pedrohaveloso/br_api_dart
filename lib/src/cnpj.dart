import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações de empresas por CNPJ.
class Cnpj {
  /// Informações disponíveis.
  Cnpj({
    required this.cnpj,
    required this.identificadorMatrizFilial,
    required this.descricaoMatrizFilial,
    required this.razaoSocial,
    required this.nomeFantasia,
    required this.situacaoCadastral,
    required this.descricaoSituacaoCadastral,
    required this.dataSituacaoCadastral,
    required this.motivoSituacaoCadastral,
    required this.nomeCidadeExterior,
    required this.codigoNaturezaJuridica,
    required this.dataInicioAtividade,
    required this.cnaeFiscal,
    required this.cnaeFiscalDescricao,
    required this.descricaoTipoLogradouro,
    required this.logradouro,
    required this.numero,
    required this.complemento,
    required this.bairro,
    required this.cep,
    required this.uf,
    required this.codigoMunicipio,
    required this.municipio,
    required this.dddTelefone1,
    required this.dddTelefone2,
    required this.dddFax,
    required this.qualificacaoDoResponsavel,
    required this.capitalSocial,
    required this.porte,
    required this.descricaoPorte,
    required this.opcaoPeloSimples,
    required this.dataOpcaoPeloSimples,
    required this.dataExclusaoDoSimples,
    required this.opcaoPeloMei,
    required this.situacaoEspecial,
    required this.dataSituacaoEspecial,
    required this.cnaesSecundarios,
    required this.qsa,
    required this.errors,
  });

  /// Obter os dados por um json.
  factory Cnpj.fromJson(Map<String, dynamic> json) {
    return Cnpj(
      cnpj: json['cnpj'].toString(),
      identificadorMatrizFilial: json['identificadorMatrizFilial'] as int?,
      descricaoMatrizFilial: json['descricaoMatrizFilial'].toString(),
      razaoSocial: json['razaoSocial'].toString(),
      nomeFantasia: json['nomeFantasia'].toString(),
      situacaoCadastral: json['situacaoCadastral'] as int?,
      descricaoSituacaoCadastral: json['descricaoSituacaoCadastral'].toString(),
      dataSituacaoCadastral: json['dataSituacaoCadastral'].toString(),
      motivoSituacaoCadastral: json['motivoSituacaoCadastral'] as int?,
      nomeCidadeExterior: json['nomeCidadeExterior'].toString(),
      codigoNaturezaJuridica: json['codigoNaturezaJuridica'] as int?,
      dataInicioAtividade: json['dataInicioAtividade'].toString(),
      cnaeFiscal: json['cnaeFiscal'] as int?,
      cnaeFiscalDescricao: json['cnaeFiscalDescricao'].toString(),
      descricaoTipoLogradouro: json['descricaoTipoLogradouro'].toString(),
      logradouro: json['logradouro'].toString(),
      numero: json['numero'].toString(),
      complemento: json['complemento'].toString(),
      bairro: json['bairro'].toString(),
      cep: json['cep'].toString(),
      uf: json['uf'].toString(),
      codigoMunicipio: json['codigoMunicipio'] as int?,
      municipio: json['municipio'].toString(),
      dddTelefone1: json['dddTelefone1'].toString(),
      dddTelefone2: json['dddTelefone2'].toString(),
      dddFax: json['dddFax'].toString(),
      qualificacaoDoResponsavel: json['qualificacaoDoResponsavel'] as int?,
      capitalSocial: json['capitalSocial'] as int?,
      porte: json['porte'].toString(),
      descricaoPorte: json['descricaoPorte'].toString(),
      opcaoPeloSimples: json['opcaoPeloSimples'] as bool?,
      dataOpcaoPeloSimples: json['dataOpcaoPeloSimples'].toString(),
      dataExclusaoDoSimples: json['dataExclusaoDoSimples'].toString(),
      opcaoPeloMei: json['opcaoPeloMei'] as bool?,
      situacaoEspecial: json['situacaoEspecial'].toString(),
      dataSituacaoEspecial: json['dataSituacaoEspecial'].toString(),
      cnaesSecundarios: json['cnaesSecundarios'] as List?,
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
    data['identificadorMatrizFilial'] = identificadorMatrizFilial;
    data['descricaoMatrizFilial'] = descricaoMatrizFilial;
    data['razaoSocial'] = razaoSocial;
    data['nomeFantasia'] = nomeFantasia;
    data['situacaoCadastral'] = situacaoCadastral;
    data['descricaoSituacaoCadastral'] = descricaoSituacaoCadastral;
    data['dataSituacaoCadastral'] = dataSituacaoCadastral;
    data['motivoSituacaoCadastral'] = motivoSituacaoCadastral;
    data['nomeCidadeExterior'] = nomeCidadeExterior;
    data['codigoNaturezaJuridica'] = codigoNaturezaJuridica;
    data['dataInicioAtividade'] = dataInicioAtividade;
    data['cnaeFiscal'] = cnaeFiscal;
    data['cnaeFiscalDescricao'] = cnaeFiscalDescricao;
    data['descricaoTipoLogradouro'] = descricaoTipoLogradouro;
    data['logradouro'] = logradouro;
    data['numero'] = numero;
    data['complemento'] = complemento;
    data['bairro'] = bairro;
    data['cep'] = cep;
    data['uf'] = uf;
    data['codigoMunicipio'] = codigoMunicipio;
    data['municipio'] = municipio;
    data['dddTelefone1'] = dddTelefone1;
    data['dddTelefone2'] = dddTelefone2;
    data['dddFax'] = dddFax;
    data['qualificacaoDoResponsavel'] = qualificacaoDoResponsavel;
    data['capitalSocial'] = capitalSocial;
    data['porte'] = porte;
    data['descricaoPorte'] = descricaoPorte;
    data['opcaoPeloSimples'] = opcaoPeloSimples;
    data['dataOpcaoPeloSimples'] = dataOpcaoPeloSimples;
    data['dataExclusaoDoSimples'] = dataExclusaoDoSimples;
    data['opcaoPeloMei'] = opcaoPeloMei;
    data['situacaoEspecial'] = situacaoEspecial;
    data['dataSituacaoEspecial'] = dataSituacaoEspecial;
    data['cnaesSecundarios'] = cnaesSecundarios;
    data['qsa'] = qsa;
    return data;
  }

  /// Busca por CNPJ na API Minha Receita.
  static Future<Cnpj> searchCnpj({required String cnpj}) async {
    return _brApiRepository.filterSearchCnpj(cnpj: cnpj);
  }
}
