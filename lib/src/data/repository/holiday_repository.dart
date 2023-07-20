part of 'br_api_repository.dart';

/// Filtragem das informações sobre feriados nacionais.
extension HolidayRepository on BrApiRepository {
  /// Filtragem da lista dos feriados nacionais de determinado ano.
  Future<List<Holiday>> filterListHolidays({required int year}) async {
    final (:body, statusCode: _) = await _brApiDatasource.listHolidays(
      year: year,
    );

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (holiday) => Holiday.fromJson(
            holiday as Map<String, dynamic>,
          ),
        )
        .toList();
  }
}
