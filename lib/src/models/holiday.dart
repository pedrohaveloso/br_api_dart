import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações sobre feriados nacionais.
class Holiday {
  /// Informações disponíveis.
  Holiday({
    this.date,
    this.type,
    this.name,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Holiday.fromJson(Map<String, dynamic> json) {
    return Holiday(
      date: json['date'].toString(),
      type: json['type'].toString(),
      name: json['name'].toString(),
      errors: {
        'message': json['message'],
        'type': json['type'],
        'name': json['name'],
      },
    );
  }

  /// Data do feriado.
  final String? date;

  /// Tipo do feriado. Exemplo: `national`
  final String? type;

  /// Nome do feriado.
  final String? name;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['date'] = date;
    data['type'] = type;
    data['name'] = name;
    return data;
  }

  /// Lista os feriados nacionais de determinado ano.
  ///
  /// Calcula os feriados móveis baseados na Páscoa e adiciona os feriados
  /// fixos.
  static Future<List<Holiday>> listHolidays({required int year}) async {
    return _brApiRepository.filterListHolidays(year: year);
  }
}
