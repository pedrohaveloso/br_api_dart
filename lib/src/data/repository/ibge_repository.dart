part of 'br_api_repository.dart';

/// Filtro das informações sobre estados provenientes do IBGE.
extension IbgeRepository on BrApiRepository {
  /// Filtro dos dados dos municípios da unidade federativa.
  ///
  /// Requer a sigla da unidade federativa, exemplo: `SP`, `RJ`.
  Future<List<CityIbge>> filterListCities({required String uf}) async {
    final (:body, statusCode: _) = await _brApiDatasource.listCities(
      uf: uf,
    );

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (city) => CityIbge.fromJson(
            city as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Filtro das informações de todos estados do Brasil.
  Future<List<StateIbge>> filterListStates() async {
    final (:body, statusCode: _) = await _brApiDatasource.listStates();

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (state) => StateIbge.fromJson(
            state as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Filtro das informações de um estado a partir da sigla ou código.
  Future<StateIbge> filterSearchState({required String codeOrUf}) async {
    final (:body, statusCode: _) = await _brApiDatasource.searchState(
      codeOrUf: codeOrUf,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return StateIbge.fromJson(bodyMap);
  }
}
