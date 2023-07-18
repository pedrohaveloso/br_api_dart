part of 'br_api_datasource.dart';

/// Abstração e normalização de dados provenientes da CPTEC.
/// Fonte oficial: CPTEC/INPE
extension CptecDatasource on BrApiDatasource {
  /// Retorna listagem com todas as cidades junto a seus respectivos códigos
  /// presentes nos serviços da CPTEC. O Código destas cidades será utilizado
  /// para os serviços de meteorologia e a ondas (previsão oceânica) fornecido
  /// pelo centro. Leve em consideração que o WebService do CPTEC as vezes é
  /// instável, então se não encontrar uma determinada cidade na listagem
  /// completa, tente buscando por parte de seu nome no endpoint de busca.
  Future<({String body, int statusCode})> listAllLocations() async {
    final (:body, :statusCode) = await Http.get(url: _cptecUrls.locality);

    return (body: body, statusCode: statusCode);
  }

  /// Retorna listagem com todas as cidades correspondentes ao termo pesquisado
  /// junto a seus respectivos códigos presentes nos serviços da CPTEC. O
  /// Código destas cidades será utilizado para os serviços de meteorologia e a
  /// ondas (previsão oceânica) fornecido pelo centro.
  Future<({String body, int statusCode})> searchLocations({
    required String cityName,
  }) async {
    final (:body, :statusCode) = await Http.get(
      url: '${_cptecUrls.locality}/$cityName',
    );

    return (body: body, statusCode: statusCode);
  }

  /// Retorna condições meteorológicas atuais nas capitais do país, com base nas
  /// estações de solo de seu aeroporto.
  Future<({String body, int statusCode})> capitalConditions() async {
    final (:body, :statusCode) = await Http.get(
      url: _cptecUrls.capitals,
    );

    return (body: body, statusCode: statusCode);
  }

  /// Retorna condições meteorológicas atuais no aeroporto solicitado. Este
  /// endpoint utiliza o código ICAO (4 dígitos) do aeroporto.
  Future<({String body, int statusCode})> airportConditions({
    required String icaoCode,
  }) async {
    final (:body, :statusCode) = await Http.get(
      url: '${_cptecUrls.airports}/$icaoCode',
    );

    return (body: body, statusCode: statusCode);
  }

  /// Retorna a previsão meteorológica para 1 dia na cidade informada.
  Future<({String body, int statusCode})> weatherForecastCity({
    required int cityCode,
  }) async {
    final (:body, :statusCode) = await Http.get(
      url: '${_cptecUrls.forecast}/$cityCode',
    );

    return (body: body, statusCode: statusCode);
  }

  /// Retorna a previsão meteorológica para a cidade informada para um período
  /// de 1 até 6 dias. Devido a inconsistências encontradas nos retornos da
  /// CPTEC, a API só consegue retornar com precisão o período máximo de
  /// 6 dias.
  Future<({String body, int statusCode})> weatherForecastCityDays({
    required int cityCode,
    required int days,
  }) async {
    final (:body, :statusCode) = await Http.get(
      url: '${_cptecUrls.forecast}/$cityCode/$days',
    );

    return (body: body, statusCode: statusCode);
  }

  /// Retorna a previsão oceânica para a cidade informada para 1 dia.
  Future<({String body, int statusCode})> oceanForecastCity({
    required int cityCode,
  }) async {
    final (:body, :statusCode) = await Http.get(
      url: '${_cptecUrls.ocean}/$cityCode',
    );

    return (body: body, statusCode: statusCode);
  }

  /// Retorna a previsão oceânica para a cidade informada para um período
  /// de até 6 dias.
  Future<({String body, int statusCode})> oceanForecastCityDays({
    required int cityCode,
    required int days,
  }) async {
    final (:body, :statusCode) = await Http.get(
      url: '${_cptecUrls.ocean}/$cityCode/$days',
    );

    return (body: body, statusCode: statusCode);
  }
}
