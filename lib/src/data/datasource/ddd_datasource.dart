part of 'br_api_datasource.dart';

/// Informações relacionadas a DDDs.
extension DddDatasource on BrApiDatasource {
  /// Retorna estado e lista de cidades por DDD.
  Future<({String body, int statusCode})> statesAndCities({
    required int ddd,
  }) async {
    final (:body, :statusCode) = await Http.get(url: '$_dddUrl/$ddd');

    return (body: body, statusCode: statusCode);
  }
}
