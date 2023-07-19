part of 'br_api_datasource.dart';

/// Informações sobre feriados nacionais.
extension HolidayDatasource on BrApiDatasource {
  /// Lista os feriados nacionais de determinado ano.
  ///
  /// Calcula os feriados móveis baseados na Páscoa e adiciona os feriados
  /// fixos.
  Future<({String body, int statusCode})> listHolidays({
    required int year,
  }) async {
    final (:body, :statusCode) = await Http.get(url: '$_holidaysUrl/$year');

    return (body: body, statusCode: statusCode);
  }
}
