import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Cidades pelos dados provenientes da CPTEC.
/// Fonte oficial: CPTEC/INPE.
class CityCptec {
  /// Informações disponíveis.
  CityCptec({
    this.name,
    this.state,
    this.id,
    this.errors,
  });

  /// Obter os dados por um json.
  factory CityCptec.fromJson(Map<String, dynamic> json) {
    return CityCptec(
      name: json['nome'].toString(),
      state: json['estado'].toString(),
      id: json['id'] as int?,
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  /// Nome da cidade.
  final String? name;

  /// Unidade federativa da cidade.
  final String? state;

  /// ID (CPTEC) da cidade.
  final int? id;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['state'] = state;
    data['id'] = id;
    return data;
  }

  /// Retorna listagem com todas as cidades junto a seus respectivos códigos
  /// presentes nos serviços da CPTEC. O Código destas cidades será utilizado
  /// para os serviços de meteorologia e a ondas (previsão oceânica) fornecido
  /// pelo centro. Leve em consideração que o WebService do CPTEC as vezes é
  /// instável, então se não encontrar uma determinada cidade na listagem
  /// completa, tente buscando por parte de seu nome no endpoint de busca.
  static Future<List<CityCptec>> listAllLocations() async {
    return _brApiRepository.filterListAllLocations();
  }

  /// Retorna listagem com todas as cidades correspondentes ao termo pesquisado
  /// junto a seus respectivos códigos presentes nos serviços da CPTEC. O
  /// Código destas cidades será utilizado para os serviços de meteorologia e a
  /// ondas (previsão oceânica) fornecido pelo centro.
  static Future<List<CityCptec>> searchLocations({
    required String cityName,
  }) async {
    return _brApiRepository.filterSearchLocations(cityName: cityName);
  }
}
