part of 'br_api_datasource.dart';

/// Taxas de juros e índices oficiais.
extension TaxDatasource on BrApiDatasource {
  /// Retorna as taxas de juros e alguns índices oficiais do Brasil.
  Future<({String body, int statusCode})> allTax() async {
    final (:body, :statusCode) = await Http.get(url: _taxUrl);

    return (body: body, statusCode: statusCode);
  }

  /// Busca as informações de uma taxa a partir do seu nome/sigla.
  Future<({String body, int statusCode})> searchTax({
    required String acronym,
  }) async {
    final (:body, :statusCode) = await Http.get(url: '$_taxUrl/$acronym');

    return (body: body, statusCode: statusCode);
  }
}
