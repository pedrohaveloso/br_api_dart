part of 'br_api_repository.dart';

/// Informações sobre Preço Médio de Veículos fornecido pela FIPE (Fundação
/// Instituto de Pesquisas Econômicas).
extension FipeRepository on BrApiRepository {
  /// Filtra a listagem das marcas de veículos referente ao tipo de veículo.
  Future<List<Fipe>> filterListBrands({required String vehicleType}) async {
    final (:body, statusCode: _) = await _brApiDatasource.listBrands(
      vehicleType: vehicleType,
    );

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (brands) => Fipe.fromJson(
            brands as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Filtragem da consulta do preço do veículo segundo a tabela fipe.
  Future<Fipe> filterSearchPrice({
    required String fipeCode,
  }) async {
    final (:body, statusCode: _) = await _brApiDatasource.searchPrice(
      fipeCode: fipeCode,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return Fipe.fromJson(bodyMap);
  }

  /// Filtragem da lista das tabelas de referência existentes.
  Future<List<Fipe>> filterListTables() async {
    final (:body, statusCode: _) = await _brApiDatasource.listTables();

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (tables) => Fipe.fromJson(
            tables as Map<String, dynamic>,
          ),
        )
        .toList();
  }
}
