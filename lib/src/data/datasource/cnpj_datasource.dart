part of 'br_api_datasource.dart';

/// Busca dados de empresas por CNPJ.
extension CnpjDatasource on BrApiDatasource {
  /// Busca por CNPJ na API Minha Receita.
  Future<({String body, int statusCode})> searchCnpj({
    required String cnpj,
  }) async {
    final (:body, :statusCode) = await Http.get(url: '$_cnpjUrl/$cnpj');

    return (body: body, statusCode: statusCode);
  }
}
