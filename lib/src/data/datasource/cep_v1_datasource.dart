part of 'br_api_datasource.dart';

/// Informações referentes a CEPs.
extension CepV1Datasource on BrApiDatasource {
  /// Busca por CEP com múltiplos providers de fallback.
  Future<({String body, int statusCode})> searchCepV1({
    required int cep,
  }) async {
    final (:body, :statusCode) = await Http.get(url: '$_cepV1Url/$cep');

    return (body: body, statusCode: statusCode);
  }
}
