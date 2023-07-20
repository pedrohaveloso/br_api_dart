import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Tabelas de referência existentes fornecidas pela FIPE (Fundação
/// Instituto de Pesquisas Econômicas).
class TableFipe {
  /// Informações disponíveis.
  TableFipe({
    this.code,
    this.mounth,
    this.errors,
  });

  /// Obter os dados por um json.
  factory TableFipe.fromJson(Map<String, dynamic> json) {
    return TableFipe(
      code: json['codigo'] as int?,
      mounth: json['mes'].toString(),
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  /// Nome do veículo.
  final int? code;

  /// Mês.
  final String? mounth;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['code'] = code;
    data['mounth'] = mounth;
    return data;
  }

  /// Lista as tabelas de referência existentes.
  static Future<List<TableFipe>> listTables() async {
    return _brApiRepository.filterListTables();
  }
}
