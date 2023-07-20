part of 'br_api_repository.dart';

/// Filtragem das informações relacionadas a DDDs.
extension DddRepository on BrApiRepository {
  /// Filtragem do retorno de estado e lista de cidades por DDD.
  Future<Ddd> filterStatesAndCities({required int ddd}) async {
    final (:body, statusCode: _) = await _brApiDatasource.statesAndCities(
      ddd: ddd,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return Ddd.fromJson(bodyMap);
  }
}
