part of 'br_api_datasource.dart';

/// Informações sobre Preço Médio de Veículos fornecido pela FIPE (Fundação
/// Instituto de Pesquisas Econômicas).
extension FipeDatasource on BrApiDatasource {
  /// Lista as marcas de veículos referente ao tipo de veículo.
  ///
  /// Os tipos suportados são `caminhoes`, `carros` e `motos`. Quando o tipo não
  /// é específicado, são buscadas as marcas de todos os tipos de veículos
  Future<({String body, int statusCode})> listBrands({
    required String vehicleType,
  }) async {
    final (:body, :statusCode) = await Http.get(
      url: '${_fipeUrls.brands}/$vehicleType',
    );

    return (body: body, statusCode: statusCode);
  }

  /// Consulta o preço do veículo segundo a tabela fipe.
  Future<({String body, int statusCode})> searchPrice({
    required String fipeCode,
  }) async {
    final (:body, :statusCode) = await Http.get(
      url: '${_fipeUrls.price}/$fipeCode',
    );

    return (body: body, statusCode: statusCode);
  }

  /// Lista as tabelas de referência existentes.
  Future<({String body, int statusCode})> listTables() async {
    final (:body, :statusCode) = await Http.get(
      url: _fipeUrls.tables,
    );

    return (body: body, statusCode: statusCode);
  }
}
