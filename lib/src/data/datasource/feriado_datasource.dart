part of 'br_api_datasource.dart';

/// Informações sobre feriados nacionais.
extension FeriadoDatasource on BrApiDatasource {
  /// Lista os feriados nacionais de determinado ano.
  ///
  /// Calcula os feriados móveis baseados na Páscoa e adiciona os feriados
  /// fixos.
  Future<({String body, int statusCode})> listFeriados({
    required int year,
  }) async {
    final (:body, :statusCode) = await Http.get(url: '$_feriadosUrl/$year');

    return (body: body, statusCode: statusCode);
  }
}
