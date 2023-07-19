import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Condições metereológicas atuais nas capitais ou aeroportos pelos dados
/// provenientes da CPTEC.
/// Fonte oficial: CPTEC/INPE.
class WeatherConditionsCptec {
  /// Informações disponíveis.
  WeatherConditionsCptec({
    this.icaoCode,
    this.updatedOn,
    this.atmosphericPressure,
    this.visibility,
    this.wind,
    this.windDirection,
    this.humidity,
    this.condition,
    this.conditionDesc,
    this.temp,
    this.errors,
  });

  /// Obter os dados por um json.
  factory WeatherConditionsCptec.fromJson(Map<String, dynamic> json) {
    return WeatherConditionsCptec(
      icaoCode: json['codigo_icao'].toString(),
      updatedOn: json['atualizado_em'].toString(),
      atmosphericPressure: json['pressao_atmosferica'] as int?,
      visibility: json['visibilidade'].toString(),
      wind: json['vento'] as int?,
      windDirection: json['direcao_vento'] as int?,
      humidity: json['umidade'] as int?,
      condition: json['condicao'].toString(),
      conditionDesc: json['condicao_desc'].toString(),
      temp: json['temp'] as num?,
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  /// Código ICAO do aeroporto.
  final String? icaoCode;

  /// Data de última atualização em formato ISO.
  final String? updatedOn;

  /// Pressão atmosférica medida na estação meteorológica do aeroporto expressa
  /// em hPa (Hectopascal).
  final int? atmosphericPressure;

  /// Condição atual de visibilidade em metros.
  final String? visibility;

  /// Intensidade do vendo em km/h.
  final int? wind;

  /// Direção do vento em graus (de 0° a 360°).
  final int? windDirection;

  /// Umidade relativa do ar em porcentagem.
  final int? humidity;

  /// Código da condição meteorológica
  final String? condition;

  /// Texto descritivo para a condição meteorológica.
  final String? conditionDesc;

  /// Temperatura (em graus celsius).
  final num? temp;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['icao_code'] = icaoCode;
    data['updated_on'] = updatedOn;
    data['atmospheric_pressure'] = atmosphericPressure;
    data['visibility'] = visibility;
    data['wind'] = wind;
    data['wind_direction'] = windDirection;
    data['humidity'] = humidity;
    data['condition'] = condition;
    data['condition_desc'] = conditionDesc;
    data['temp'] = temp;
    return data;
  }

  /// Retorna condições meteorológicas atuais nas capitais do país, com base nas
  /// estações de solo de seu aeroporto.
  static Future<List<WeatherConditionsCptec>> capitalConditions() async {
    return _brApiRepository.filterCapitalConditions();
  }

  /// Retorna condições meteorológicas atuais no aeroporto solicitado. Este
  /// endpoint utiliza o código ICAO (4 dígitos) do aeroporto.
  static Future<WeatherConditionsCptec> airportConditions({
    required String icaoCode,
  }) async {
    return _brApiRepository.filterAirportConditions(icaoCode: icaoCode);
  }
}
