import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações relacionadas a DDDs.
class Ddd {
  /// Informações disponíveis.
  Ddd({
    this.state,
    this.cities,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Ddd.fromJson(Map<String, dynamic> json) {
    return Ddd(
      state: json['state'].toString(),
      cities: json['cities'] as List,
      errors: {
        'message': json['message'],
        'type': json['type'],
        'name': json['name'],
      },
    );
  }

  /// Estado do DDD.
  final String? state;

  /// Cidades do DDD.
  final List<dynamic>? cities;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['state'] = state;
    data['cities'] = cities;
    return data;
  }

  /// Retorna estado e lista de cidades por DDD.
  static Future<Ddd> stateAndCities({required int ddd}) async {
    return _brApiRepository.filterStatesAndCities(ddd: ddd);
  }
}
