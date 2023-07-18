part of 'br_api_repository.dart';

/// Filtragem das informações referentes a corretoras ativas listadas na CVM.
extension CorretoraRepository on BrApiRepository {
  /// Filtragem das informações das corretoras nos arquivos da CVM.
  Future<List<Corretora>> filterAllCorretoraInformation() async {
    final (:body, statusCode: _) =
        await _brApiDatasource.allCorretoraInformation();

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (corretora) => Corretora.fromJson(
            corretora as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Filtragem da busca por corretoras através do CNPJ nos arquivos da CVM.
  Future<Corretora> filterSearchCorretoraInformation({
    required String cnpj,
  }) async {
    final (:body, statusCode: _) =
        await _brApiDatasource.searchCorretoraInformation(cnpj: cnpj);

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return Corretora.fromJson(bodyMap);
  }
}
