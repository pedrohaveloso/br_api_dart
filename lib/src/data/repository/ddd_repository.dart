part of 'br_api_repository.dart';

/// Filtragem das informações referentes a CEPs.
extension DddRepository on BrApiRepository {
  /// Filtragem das informações da busca por CEP com múltiplos providers de
  /// fallback.
  Future<Ddd> filterStatesAndCities({required int ddd}) async {
    final (:body, statusCode: _) = await _brApiDatasource.statesAndCities(
      ddd: ddd,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return Ddd.fromJson(bodyMap);
  }
}
