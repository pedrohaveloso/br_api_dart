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
    required this.codigoNaturezaJurifica,
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
      cnpj: json['cnpj'] as String?,
      identificadorMatrizFilial: json['identificadorMatrizFilial'] as int?,
      descricaoMatrizFilial: json['descricaoMatrizFilial'] as String?,
      razaoSocial: json['razaoSocial'] as String?,
      nomeFantasia: json['nomeFantasia'] as String?,
      situacaoCadastral: json['situacaoCadastral'] as int?,
      descricaoSituacaoCadastral: json['descricaoSituacaoCadastral'] as String?,
      dataSituacaoCadastral: json['dataSituacaoCadastral'] as String?,
      motivoSituacaoCadastral: json['motivoSituacaoCadastral'] as int?,
      nomeCidadeExterior: json['nomeCidadeExterior'] as String?,
      codigoNaturezaJurifica: json['codigoNaturezaJurifica'] as int?,
      dataInicioAtividade: json['dataInicioAtividade'] as String?,
      cnaeFiscal: json['cnaeFiscal'] as int?,
      cnaeFiscalDescricao: json['cnaeFiscalDescricao'] as String?,
      descricaoTipoLogradouro: json['descricaoTipoLogradouro'] as String?,
      logradouro: json['logradouro'] as String?,
      numero: json['numero'] as String?,
      complemento: json['complemento'] as String?,
      bairro: json['bairro'] as String?,
      cep: json['cep'] as String?,
      uf: json['uf'] as String?,
      codigoMunicipio: json['codigoMunicipio'] as int?,
      municipio: json['municipio'] as String?,
      dddTelefone1: json['dddTelefone1'] as String?,
      dddTelefone2: json['dddTelefone2'] as String?,
      dddFax: json['dddFax'] as String?,
      qualificacaoDoResponsavel: json['qualificacaoDoResponsavel'] as int?,
      capitalSocial: json['capitalSocial'] as int?,
      porte: json['porte'] as String?,
      descricaoPorte: json['descricaoPorte'] as String?,
      opcaoPeloSimples: json['opcaoPeloSimples'] as bool?,
      dataOpcaoPeloSimples: json['dataOpcaoPeloSimples'] as String?,
      dataExclusaoDoSimples: json['dataExclusaoDoSimples'] as String?,
      opcaoPeloMei: json['opcaoPeloMei'] as bool?,
      situacaoEspecial: json['situacaoEspecial'] as String?,
      dataSituacaoEspecial: json['dataSituacaoEspecial'] as String?,
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

  final String? cnpj;
  final int? identificadorMatrizFilial;
  final String? descricaoMatrizFilial;
  final String? razaoSocial;
  final String? nomeFantasia;
  final int? situacaoCadastral;
  final String? descricaoSituacaoCadastral;
  final String? dataSituacaoCadastral;
  final int? motivoSituacaoCadastral;
  final String? nomeCidadeExterior;
  final int? codigoNaturezaJurifica;
  final String? dataInicioAtividade;
  final int? cnaeFiscal;
  final String? cnaeFiscalDescricao;
  final String? descricaoTipoLogradouro;
  final String? logradouro;
  final String? numero;
  final String? complemento;
  final String? bairro;
  final String? cep;
  final String? uf;
  final int? codigoMunicipio;
  final String? municipio;
  final String? dddTelefone1;
  final String? dddTelefone2;
  final String? dddFax;
  final int? qualificacaoDoResponsavel;
  final int? capitalSocial;
  final String? porte;
  final String? descricaoPorte;
  final bool? opcaoPeloSimples;
  final String? dataOpcaoPeloSimples;
  final String? dataExclusaoDoSimples;
  final bool? opcaoPeloMei;
  final String? situacaoEspecial;
  final String? dataSituacaoEspecial;
  final List<dynamic>? cnaesSecundarios;
  final List<dynamic>? qsa;
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
    data['codigoNaturezaJurifica'] = codigoNaturezaJurifica;
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
