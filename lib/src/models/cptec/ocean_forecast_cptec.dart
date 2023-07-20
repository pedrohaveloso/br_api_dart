import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Previsão oceânica nas cidades pelos dados provenientes da CPTEC.
/// Fonte oficial: CPTEC/INPE.
class OceanForecastCptec {
  /// Informações disponíveis.
  OceanForecastCptec({
    this.city,
    this.state,
    this.updatedOn,
    this.waves,
    this.errors,
  });

  /// Obter os dados por um json.
  factory OceanForecastCptec.fromJson(Map<String, dynamic> json) {
    return OceanForecastCptec(
      city: json['cidade'].toString(),
      state: json['estado'].toString(),
      updatedOn: json['atualizado_em'].toString(),
      waves: json['ondas'] as List?,
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
  final List<dynamic>? waves;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['city'] = city;
    data['state'] = state;
    data['updated_on'] = updatedOn;
    data['waves'] = waves;

    return data;
  }

  /// Retorna a previsão oceânica para a cidade informada para 1 dia.
  static Future<OceanForecastCptec> oceanForecastCity({
    required int cityCode,
  }) async {
    return _brApiRepository.filterOceanForecastCity(cityCode: cityCode);
  }

  /// Retorna a previsão oceânica para a cidade informada para um período
  /// de até 6 dias.
  static Future<OceanForecastCptec> oceanForecastCityDays({
    required int cityCode,
    required int days,
  }) async {
    return _brApiRepository.filterOceanForecastCityDays(
      cityCode: cityCode,
      days: days,
    );
  }
}
