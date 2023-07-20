import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações sobre marcas de veículos fornecido pela FIPE (Fundação
/// Instituto de Pesquisas Econômicas).
class VehicleFipe {
  /// Informações disponíveis.
  VehicleFipe({
    this.value,
    this.brand,
    this.model,
    this.modelYear,
    this.fuel,
    this.fipeCode,
    this.referenceMonth,
    this.typeVehicle,
    this.acronymFuel,
    this.dateConsultation,
    this.errors,
  });

  /// Obter os dados por um json.
  factory VehicleFipe.fromJson(Map<String, dynamic> json) {
    return VehicleFipe(
      value: json['valor'].toString(),
      brand: json['marca'].toString(),
      model: json['modelo'].toString(),
      modelYear: json['anoModelo'] as int?,
      fuel: json['combustivel'].toString(),
      fipeCode: json['combustivel'].toString(),
      referenceMonth: json['combustivel'].toString(),
      typeVehicle: json['tipoVeiculo'] as int?,
      acronymFuel: json['siglaCombustivel'].toString(),
      dateConsultation: json['dataConsulta'].toString(),
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  /// Valor do veículo.
  final String? value;

  /// Marca do veículo
  final String? brand;

  /// Modelo.
  final String? model;

  /// Ano do modelo.
  final int? modelYear;

  /// Combustível usado.
  final String? fuel;

  /// Código FIPE.
  final String? fipeCode;

  /// Mês de referência.
  final String? referenceMonth;

  /// Tipo do veículo.
  final int? typeVehicle;

  /// Sigla do combustível.
  final String? acronymFuel;

  /// Data de consulta.
  final String? dateConsultation;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['value'] = value;
    data['brand'] = brand;
    data['model'] = model;
    data['modelYear'] = modelYear;
    data['fuel'] = fuel;
    data['fipeCode'] = fipeCode;
    data['referenceMonth'] = referenceMonth;
    data['typeVehicle'] = typeVehicle;
    data['acronymFuel'] = acronymFuel;
    data['dateConsultation'] = dateConsultation;
    return data;
  }

  /// Consulta o preço do veículo segundo a tabela fipe.
  static Future<List<VehicleFipe>> searchPrice({
    required String fipeCode,
  }) async {
    return _brApiRepository.filterSearchPrice(fipeCode: fipeCode);
  }
}
