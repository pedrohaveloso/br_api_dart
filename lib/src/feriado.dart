import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações sobre feriados nacionais.
class Feriado {
  /// Informações disponíveis.
  Feriado({
    this.date,
    this.type,
    this.name,
    this.fullName,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Feriado.fromJson(Map<String, dynamic> json) {
    return Feriado(
      date: json['date'].toString(),
      type: json['type'].toString(),
      name: json['name'].toString(),
      fullName: json['full_name'].toString(),
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

  /// ...
  final String? fullName;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['date'] = date;
    data['type'] = type;
    data['name'] = name;
    data['full_name'] = fullName;
    return data;
  }

  /// Lista os feriados nacionais de determinado ano.
  ///
  /// Calcula os feriados móveis baseados na Páscoa e adiciona os feriados
  /// fixos.
  static Future<List<Feriado>> listFeriados({required int year}) async {
    return _brApiRepository.filterListFeriados(year: year);
  }
}
