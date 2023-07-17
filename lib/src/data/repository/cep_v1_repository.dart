part of 'br_api_repository.dart';

/// Filtragem das informações referentes a CEPs.
extension CepV1Repository on BrApiRepository {
  /// Filtragem das informações da busca por CEP com múltiplos providers de
  /// fallback.
  Future<CepV1> filterSearchCepV1({required int cep}) async {
    final (:body, statusCode: _) = await _brApiDatasource.searchCepV1(cep: cep);

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return CepV1.fromJson(bodyMap);
  }
}
