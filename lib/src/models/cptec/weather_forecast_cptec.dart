import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Previsão metereológica nas cidades pelos dados provenientes da CPTEC.
/// Fonte oficial: CPTEC/INPE.
class WeatherForecastCptec {
  /// Informações disponíveis.
  WeatherForecastCptec({
    this.city,
    this.state,
    this.updatedOn,
    this.climate,
    this.errors,
  });

  /// Obter os dados por um json.
  factory WeatherForecastCptec.fromJson(Map<String, dynamic> json) {
    return WeatherForecastCptec(
      city: json['cidade'].toString(),
      state: json['estado'].toString(),
      updatedOn: json['atualizado_em'].toString(),
      climate: json['clima'] as List?,
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  /// Cidade.
  final String? city;

  /// Unidade federativa.
  final String? state;

  /// Data de última atualização em formato ISO.
  final String? updatedOn;

  /// Lista com condições climáticas dia a dia.
  final List<dynamic>? climate;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['city'] = city;
    data['state'] = state;
    data['updated_on'] = updatedOn;
    data['climate'] = climate;

    return data;
  }

  /// Retorna a previsão meteorológica para 1 dia na cidade informada.
  static Future<WeatherForecastCptec> weatherForecastCity({
    required int cityCode,
  }) async {
    return _brApiRepository.filterWeatherForecastCity(cityCode: cityCode);
  }

  /// Retorna a previsão meteorológica para a cidade informada para um período
  /// de 1 até 6 dias. Devido a inconsistências encontradas nos retornos da
  /// CPTEC, a API só consegue retornar com precisão o período máximo de
  /// 6 dias.
  static Future<WeatherForecastCptec> weatherForecastCityDays({
    required int cityCode,
    required int days,
  }) async {
    return _brApiRepository.filterWeatherForecastCityDays(
      cityCode: cityCode,
      days: days,
    );
  }
}
