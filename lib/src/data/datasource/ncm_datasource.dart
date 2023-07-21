part of 'br_api_datasource.dart';

/// Informações referentes a NCMs
extension NcmDatasource on BrApiDatasource {
  /// Retorna informações de todos os NCMs.
  Future<({String body, int statusCode})> allNcm() async {
    final (:body, :statusCode) = await Http.get(url: _ncmUrl);

    return (body: body, statusCode: statusCode);
  }

  /// Pesquisa por NCMs a partir de um código ou descrição.
  Future<({String body, int statusCode})> searchNcms({
    required String code,
  }) async {
    final (:body, :statusCode) = await Http.get(url: '$_ncmUrl?search=$code');

    return (body: body, statusCode: statusCode);
  }

  /// Busca as informações de um NCM a partir de um código.
  Future<({String body, int statusCode})> searchNcm({
    required String code,
  }) async {
    final (:body, :statusCode) = await Http.get(url: '$_ncmUrl/$code');

    return (body: body, statusCode: statusCode);
  }
}
