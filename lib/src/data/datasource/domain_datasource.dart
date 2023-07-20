part of 'br_api_datasource.dart';

/// Avalia um dominio no registro.br.
extension DomainDatasource on BrApiDatasource {
  /// Avalia o status de um dominio .br
  Future<({String body, int statusCode})> searchDomain({
    required String domain,
  }) async {
    final (:body, :statusCode) = await Http.get(
      url: '$_domainUrl/$domain',
    );

    return (body: body, statusCode: statusCode);
  }
}
