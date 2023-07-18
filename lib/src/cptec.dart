import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Abstração e normalização de dados provenientes da CPTEC.
/// Fonte oficial: CPTEC/INPE.
class Cptec {
  /// Informações disponíveis.
  Cptec({
    this.nome,
    this.estado,
    this.id,
    this.codigoIcao,
    this.atualizadoEm,
    this.pressaoAtmosferica,
    this.visibilidade,
    this.vento,
    this.direcaoVento,
    this.umidade,
    this.condicao,
    this.condicaoDesc,
    this.temp,
    this.cidade,
    this.clima,
    this.ondas,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Cptec.fromJson(Map<String, dynamic> json) {
    return Cptec(
      nome: json['nome'].toString(),
      estado: json['estado'].toString(),
      id: json['id'] as int?,
      codigoIcao: json['codigo_icao'].toString(),
      atualizadoEm: json['atualizado_em'].toString(),
      pressaoAtmosferica: json['pressao_atmosferica'] as int?,
      visibilidade: json['visibilidade'] as String?,
      vento: json['vento'] as int?,
      direcaoVento: json['direcao_vento'] as int?,
      umidade: json['umidade'] as int?,
      condicao: json['condicao'].toString(),
      condicaoDesc: json['condicao_desc'].toString(),
      temp: json['temp'] as num?,
      cidade: json['cidade'].toString(),
      clima: json['clima'] as List?,
      ondas: json['ondas'] as List?,
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  /// Nome da cidade.
  final String? nome;

  /// Nome do estado.
  final String? estado;

  /// ID da cidade.
  final int? id;

  /// Código ICAO do aeroporto.
  final String? codigoIcao;

  /// Data de última atualização em formato ISO.
  final String? atualizadoEm;

  /// Pressão atmosférica medida na estação meteorológica do aeroporto expressa
  /// em hPa (Hectopascal).
  final int? pressaoAtmosferica;

  /// Condição atual de visibilidade em metros.
  final String? visibilidade;

  /// Intensidade do vendo em km/h.
  final int? vento;

  /// Direção do vento em graus (de 0° a 360°).
  final int? direcaoVento;

  /// Umidade relativa do ar em porcentagem.
  final int? umidade;

  /// Código da condição meteorológica
  final String? condicao;

  /// Texto descritivo para a condição meteorológica.
  final String? condicaoDesc;

  /// Temperatura (em graus celsius).
  final num? temp;

  /// Cidade.
  final String? cidade;

  /// Lista com condições climáticas dia a dia.
  final List<dynamic>? clima;

  /// Lista com condições das ondas.
  final List<dynamic>? ondas;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['nome'] = nome;
    data['estado'] = estado;
    data['id'] = id;
    data['codigo_icao'] = codigoIcao;
    data['atualizado_em'] = atualizadoEm;
    data['pressao_atmosferica'] = pressaoAtmosferica;
    data['visibilidade'] = visibilidade;
    data['vento'] = vento;
    data['direcao_vento'] = direcaoVento;
    data['umidade'] = umidade;
    data['condicao'] = condicao;
    data['condicao_desc'] = condicaoDesc;
    data['temp'] = temp;
    data['cidade'] = cidade;
    data['clima'] = clima;
    data['ondas'] = ondas;
    return data;
  }

  /// Retorna listagem com todas as cidades junto a seus respectivos códigos
  /// presentes nos serviços da CPTEC. O Código destas cidades será utilizado
  /// para os serviços de meteorologia e a ondas (previsão oceânica) fornecido
  /// pelo centro. Leve em consideração que o WebService do CPTEC as vezes é
  /// instável, então se não encontrar uma determinada cidade na listagem
  /// completa, tente buscando por parte de seu nome no endpoint de busca.
  static Future<List<Cptec>> listAllLocations() async {
    return _brApiRepository.filterListAllLocations();
  }

  /// Retorna listagem com todas as cidades correspondentes ao termo pesquisado
  /// junto a seus respectivos códigos presentes nos serviços da CPTEC. O
  /// Código destas cidades será utilizado para os serviços de meteorologia e a
  /// ondas (previsão oceânica) fornecido pelo centro.
  static Future<List<Cptec>> searchLocations({
    required String cityName,
  }) async {
    return _brApiRepository.filterSearchLocations(cityName: cityName);
  }

  /// Retorna condições meteorológicas atuais nas capitais do país, com base nas
  /// estações de solo de seu aeroporto.
  static Future<List<Cptec>> capitalConditions() async {
    return _brApiRepository.filterCapitalConditions();
  }

  /// Retorna condições meteorológicas atuais no aeroporto solicitado. Este
  /// endpoint utiliza o código ICAO (4 dígitos) do aeroporto.
  static Future<Cptec> airportConditions({
    required String icaoCode,
  }) async {
    return _brApiRepository.filterAirportConditions(icaoCode: icaoCode);
  }

  /// Retorna a previsão meteorológica para 1 dia na cidade informada.
  static Future<Cptec> weatherForecastCity({
    required int cityCode,
  }) async {
    return _brApiRepository.filterWeatherForecastCity(cityCode: cityCode);
  }

  /// Retorna a previsão meteorológica para a cidade informada para um período
  /// de 1 até 6 dias. Devido a inconsistências encontradas nos retornos da
  /// CPTEC, a API só consegue retornar com precisão o período máximo de
  /// 6 dias.
  static Future<Cptec> weatherForecastCityDays({
    required int cityCode,
    required int days,
  }) async {
    return _brApiRepository.filterWeatherForecastCityDays(
      cityCode: cityCode,
      days: days,
    );
  }

  /// Retorna a previsão oceânica para a cidade informada para 1 dia.
  static Future<Cptec> oceanForecastCity({
    required int cityCode,
  }) async {
    return _brApiRepository.filterOceanForecastCity(cityCode: cityCode);
  }

  /// Retorna a previsão oceânica para a cidade informada para um período
  /// de até 6 dias.
  static Future<Cptec> oceanForecastCityDays({
    required int cityCode,
    required int days,
  }) async {
    return _brApiRepository.filterOceanForecastCityDays(
      cityCode: cityCode,
      days: days,
    );
  }
}
