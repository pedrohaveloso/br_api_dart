import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Cidades provenientes do IBGE
class CityIbge {
  /// Informações disponíveis.
  CityIbge({
    this.cityName,
    this.ibgeCode,
    this.errors,
  });

  /// Obter os dados por um json.
  factory CityIbge.fromJson(Map<String, dynamic> json) {
    return CityIbge(
      cityName: json['nome'].toString(),
      ibgeCode: json['codigo_ibge'].toString(),
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  /// Nome da cidade.
  final String? cityName;

  /// Código IBGE da cidade.
  final String? ibgeCode;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['city_name'] = cityName;
    data['ibge_code'] = ibgeCode;
    return data;
  }

  /// Retorna os municípios da unidade federativa.
  ///
  /// Requer a sigla da unidade federativa, exemplo: `SP`, `RJ`.
  static Future<List<CityIbge>> listCities({
    required String uf,
  }) async {
    return _brApiRepository.filterListCities(uf: uf);
  }
}
