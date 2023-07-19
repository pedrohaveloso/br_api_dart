import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Estados provenientes do IBGE
class StateIbge {
  /// Informações disponíveis.
  StateIbge({
    this.id,
    this.acronym,
    this.name,
    this.region,
    this.errors,
  });

  /// Obter os dados por um json.
  factory StateIbge.fromJson(Map<String, dynamic> json) {
    return StateIbge(
      id: json['id'] as int?,
      acronym: json['sigla'].toString(),
      name: json['nome'].toString(),
      region: json['regiao'],
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  /// ID do estado.
  final int? id;

  /// Sigla do estado.
  final String? acronym;

  /// Nome do estado.
  final String? name;

  /// Dados da região do estado.
  final dynamic region;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['acronym'] = acronym;
    data['name'] = name;
    data['region'] = region;
    return data;
  }

  /// Retorna informações de todos estados do Brasil.
  static Future<List<StateIbge>> listStates() async {
    return _brApiRepository.filterListStates();
  }

  /// Busca as informações de um estado a partir da sigla ou código.
  static Future<StateIbge> searchState({
    required String codeOrUf,
  }) async {
    return _brApiRepository.filterSearchState(codeOrUf: codeOrUf);
  }
}
