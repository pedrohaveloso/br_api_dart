import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações sobre marcas de veículos fornecido pela FIPE (Fundação
/// Instituto de Pesquisas Econômicas).
class BrandFipe {
  /// Informações disponíveis.
  BrandFipe({
    this.name,
    this.value,
    this.errors,
  });

  /// Obter os dados por um json.
  factory BrandFipe.fromJson(Map<String, dynamic> json) {
    return BrandFipe(
      name: json['nome'].toString(),
      value: json['valor'] as num?,
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  /// Nome da marca.
  final String? name;

  /// Valor.
  final num? value;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['value'] = value;

    return data;
  }

  /// Lista as marcas de veículos referente ao tipo de veículo.
  ///
  /// Os tipos suportados são `caminhoes`, `carros` e `motos`. Quando o tipo não
  /// é específicado, são buscadas as marcas de todos os tipos de veículos
  static Future<List<BrandFipe>> listBrands({
    required String vehicleType,
  }) async {
    return _brApiRepository.filterListBrands(vehicleType: vehicleType);
  }
}
