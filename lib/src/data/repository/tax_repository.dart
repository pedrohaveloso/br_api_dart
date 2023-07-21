part of 'br_api_repository.dart';

/// Filtragem das informações das taxas de juros e índices oficiais.
extension TaxRepository on BrApiRepository {
  /// Filtragem das taxas de juros e alguns índices oficiais do Brasil.
  Future<List<Tax>> filterAllTax() async {
    final (:body, statusCode: _) = await _brApiDatasource.allTax();

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (tax) => Tax.fromJson(
            tax as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Filtragem das informações de uma taxa a partir do seu nome/sigla.
  Future<Tax> filterSearchTax({required String acronym}) async {
    final (:body, statusCode: _) = await _brApiDatasource.searchTax(
      acronym: acronym,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return Tax.fromJson(bodyMap);
  }
}
