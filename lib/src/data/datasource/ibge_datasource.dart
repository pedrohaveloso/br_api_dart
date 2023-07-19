part of 'br_api_datasource.dart';

/// Informações sobre estados provenientes do IBGE.
extension IbgeDatasource on BrApiDatasource {
  /// Retorna os municípios da unidade federativa.
  ///
  /// Requer a sigla da unidade federativa, exemplo: `SP`, `RJ`.
  Future<({String body, int statusCode})> listCities({
    required String uf,
  }) async {
    final (:body, :statusCode) = await Http.get(
      url: '${_ibgeUrls.cities}/$uf/${_ibgeUrls.providers}',
    );

    return (body: body, statusCode: statusCode);
  }

  /// Retorna informações de todos estados do Brasil.
  Future<({String body, int statusCode})> listStates() async {
    final (:body, :statusCode) = await Http.get(url: _ibgeUrls.states);

    return (body: body, statusCode: statusCode);
  }

  /// Busca as informações de um estado a partir da sigla ou código.
  Future<({String body, int statusCode})> searchState({
    required String codeOrUf,
  }) async {
    final (:body, :statusCode) = await Http.get(
      url: '${_ibgeUrls.states}/$codeOrUf',
    );

    return (body: body, statusCode: statusCode);
  }
}
