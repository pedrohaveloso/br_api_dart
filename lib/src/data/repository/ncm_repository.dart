part of 'br_api_repository.dart';

/// Filtragem de informações referentes a NCMs
extension NcmDatasource on BrApiRepository {
  /// Filtragem das informações de todos os NCMs.
  Future<List<Ncm>> filterAllNcm() async {
    final (:body, statusCode: _) = await _brApiDatasource.allNcm();

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (ncm) => Ncm.fromJson(
            ncm as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Filtragem da pesquisa por NCMs a partir de um código ou descrição.
  Future<List<Ncm>> filterSearchNcms({
    required String code,
  }) async {
    final (:body, statusCode: _) = await _brApiDatasource.searchNcms(
      code: code,
    );

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (ncm) => Ncm.fromJson(
            ncm as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Filtragem da busca das informações de um NCM a partir de um código.
  Future<Ncm> filterSearchNcm({
    required String code,
  }) async {
    final (:body, statusCode: _) = await _brApiDatasource.searchNcm(
      code: code,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return Ncm.fromJson(bodyMap);
  }
}
