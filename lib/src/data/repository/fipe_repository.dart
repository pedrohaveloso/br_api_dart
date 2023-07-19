part of 'br_api_repository.dart';

/// Informações sobre Preço Médio de Veículos fornecido pela FIPE (Fundação
/// Instituto de Pesquisas Econômicas).
extension FipeRepository on BrApiRepository {
  /// Filtra a listagem das marcas de veículos referente ao tipo de veículo.
  Future<List<BrandFipe>> filterListBrands({
    required String vehicleType,
  }) async {
    final (:body, statusCode: _) = await _brApiDatasource.listBrands(
      vehicleType: vehicleType,
    );

    var bodyList = <dynamic>[];

    if (jsonDecode(body) is List) {
      bodyList = jsonDecode(body) as List;
    }

    return bodyList
        .map(
          (brands) => BrandFipe.fromJson(
            brands as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Filtragem da consulta do preço do veículo segundo a tabela fipe.
  Future<List<VehicleFipe>> filterSearchPrice({
    required String fipeCode,
  }) async {
    final (:body, statusCode: _) = await _brApiDatasource.searchPrice(
      fipeCode: fipeCode,
    );

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (vehicle) => VehicleFipe.fromJson(
            vehicle as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Filtragem da lista das tabelas de referência existentes.
  Future<List<TableFipe>> filterListTables() async {
    final (:body, statusCode: _) = await _brApiDatasource.listTables();

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (tables) => TableFipe.fromJson(
            tables as Map<String, dynamic>,
          ),
        )
        .toList();
  }
}
