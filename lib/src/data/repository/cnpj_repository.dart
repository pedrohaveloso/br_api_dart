part of 'br_api_repository.dart';

/// Filtragem da busca dados de empresas por CNPJ.
extension CnpjRepository on BrApiRepository {
  /// Filtragem das informações da busca por CNPJ na API Minha Receita.
  Future<Company> filterSearchCnpj({required String cnpj}) async {
    final (:body, statusCode: _) = await _brApiDatasource.searchCnpj(
      cnpj: cnpj,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return Company.fromJson(bodyMap);
  }
}
