import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Taxas de juros e índices oficiais.
class Tax {
  /// Informações disponíveis.
  Tax({
    this.name,
    this.value,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Tax.fromJson(Map<String, dynamic> json) {
    return Tax(
      name: json['nome'].toString(),
      value: json['valor'] as num? ?? 0,
      errors: {
        'message': json['message'],
        'type': json['type'],
        'name': json['name'],
      },
    );
  }

  /// Nome da taxa ou índice.
  final String? name;

  /// Valor da taxa ou índice.
  final num? value;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['value'] = value;
    return data;
  }

  /// Retorna as taxas de juros e alguns índices oficiais do Brasil.
  static Future<List<Tax>> allTax() async {
    return _brApiRepository.filterAllTax();
  }

  /// Busca as informações de uma taxa a partir do seu nome/sigla.
  static Future<Tax> searchTax({
    required String acronym,
  }) async {
    return _brApiRepository.filterSearchTax(acronym: acronym);
  }
}
