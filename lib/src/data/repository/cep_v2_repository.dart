part of 'br_api_repository.dart';

/// Filtragem das informações referentes a CEPs.
extension CepV2Repository on BrApiRepository {
  /// Filtragem das informações da busca por CEP com múltiplos providers de
  /// fallback.
  Future<CepV2> filterSearchCepV2({required int cep}) async {
    final (:body, statusCode: _) = await _brApiDatasource.searchCepV2(cep: cep);

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return CepV2.fromJson(bodyMap);
  }
}
