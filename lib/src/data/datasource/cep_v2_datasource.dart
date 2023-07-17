part of 'br_api_datasource.dart';

/// Informações referentes a CEPs.
extension CepV2Datasource on BrApiDatasource {
  /// Versão 2 do serviço de busca por CEP com múltiplos providers de fallback.
  Future<({String body, int statusCode})> searchCepV2({
    required int cep,
  }) async {
    final (:body, :statusCode) = await Http.get(url: '$_cepV2Url/$cep');

    return (body: body, statusCode: statusCode);
  }
}
