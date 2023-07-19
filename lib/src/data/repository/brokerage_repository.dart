part of 'br_api_repository.dart';

/// Filtragem das informações referentes a corretoras ativas listadas na CVM.
extension BrokerageRepository on BrApiRepository {
  /// Filtragem das informações das corretoras nos arquivos da CVM.
  Future<List<Brokerage>> filterAllBrokerageInformation() async {
    final (:body, statusCode: _) =
        await _brApiDatasource.allBrokerageInformation();

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (brokerage) => Brokerage.fromJson(
            brokerage as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Filtragem da busca por corretoras através do CNPJ nos arquivos da CVM.
  Future<Brokerage> filterSearchBrokerageInformation({
    required String cnpj,
  }) async {
    final (:body, statusCode: _) =
        await _brApiDatasource.searchBrokerageInformation(cnpj: cnpj);

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return Brokerage.fromJson(bodyMap);
  }
}
