part of 'br_api_datasource.dart';

/// Informações referentes a corretoras ativas listadas na CVM.
extension BrokerageDatasource on BrApiDatasource {
  /// Retorna as corretoras nos arquivos da CVM.
  Future<({String body, int statusCode})> allBrokerageInformation() async {
    final (:body, :statusCode) = await Http.get(url: _brokerageUrl);

    return (body: body, statusCode: statusCode);
  }

  /// Busca por corretoras através do CNPJ nos arquivos da CVM.
  Future<({String body, int statusCode})> searchBrokerageInformation({
    required String cnpj,
  }) async {
    final (:body, :statusCode) = await Http.get(url: '$_brokerageUrl/$cnpj');

    return (body: body, statusCode: statusCode);
  }
}
