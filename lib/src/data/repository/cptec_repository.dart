part of 'br_api_repository.dart';

/// Filtragem dos dados da abstração e normalização de dados provenientes da
/// CPTEC.
/// Fonte oficial: CPTEC/INPE
extension CptecRepository on BrApiRepository {
  /// Filtragem das informações da listagem com todas as cidades junto a seus
  /// respectivos códigos presentes nos serviços da CPTEC.
  Future<List<CityCptec>> filterListAllLocations() async {
    final (:body, statusCode: _) = await _brApiDatasource.listAllLocations();

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (city) => CityCptec.fromJson(
            city as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Filtragem da listagem com todas as cidades correspondentes ao termo
  /// pesquisado junto a seus respectivos códigos presentes nos serviços da
  /// CPTEC.
  Future<List<CityCptec>> filterSearchLocations({
    required String cityName,
  }) async {
    final (:body, statusCode: _) = await _brApiDatasource.searchLocations(
      cityName: cityName,
    );

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (city) => CityCptec.fromJson(
            city as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Filtragem das informações das condições meteorológicas atuais nas capitais
  /// do país, com base nas estações de solo de seu aeroporto.
  Future<List<WeatherConditionsCptec>> filterCapitalConditions() async {
    final (:body, statusCode: _) = await _brApiDatasource.capitalConditions();

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (city) => WeatherConditionsCptec.fromJson(
            city as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Filtragem das informações condições meteorológicas atuais no aeroporto
  /// solicitado. Esteendpoint utiliza o código ICAO (4 dígitos) do aeroporto.
  Future<WeatherConditionsCptec> filterAirportConditions({
    required String icaoCode,
  }) async {
    final (:body, statusCode: _) = await _brApiDatasource.airportConditions(
      icaoCode: icaoCode,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return WeatherConditionsCptec.fromJson(bodyMap);
  }

  /// Filtragem da previsão meteorológica para 1 dia na cidade informada.
  Future<WeatherForecastCptec> filterWeatherForecastCity({
    required int cityCode,
  }) async {
    final (:body, statusCode: _) = await _brApiDatasource.weatherForecastCity(
      cityCode: cityCode,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return WeatherForecastCptec.fromJson(bodyMap);
  }

  /// Filtragem da previsão meteorológica para a cidade informada para um
  /// período de 1 até 6 dias.
  Future<WeatherForecastCptec> filterWeatherForecastCityDays({
    required int cityCode,
    required int days,
  }) async {
    final (:body, statusCode: _) =
        await _brApiDatasource.weatherForecastCityDays(
      cityCode: cityCode,
      days: days,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return WeatherForecastCptec.fromJson(bodyMap);
  }

  /// Filtragem da previsão oceânica para a cidade informada para 1 dia.
  Future<OceanForecastCptec> filterOceanForecastCity({
    required int cityCode,
  }) async {
    final (:body, statusCode: _) = await _brApiDatasource.oceanForecastCity(
      cityCode: cityCode,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return OceanForecastCptec.fromJson(bodyMap);
  }

  /// Fitragem da previsão oceânica para a cidade informada para um período
  /// de até 6 dias.
  Future<OceanForecastCptec> filterOceanForecastCityDays({
    required int cityCode,
    required int days,
  }) async {
    final (:body, statusCode: _) = await _brApiDatasource.oceanForecastCityDays(
      cityCode: cityCode,
      days: days,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return OceanForecastCptec.fromJson(bodyMap);
  }
}
