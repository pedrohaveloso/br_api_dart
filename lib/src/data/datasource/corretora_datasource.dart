part of 'br_api_datasource.dart';

/// Informações referentes a corretoras ativas listadas na CVM.
extension CorretoraDatasource on BrApiDatasource {
  /// Retorna as corretoras nos arquivos da CVM.
  Future<({String body, int statusCode})> allCorretoraInformation() async {
    final (:body, :statusCode) = await Http.get(url: _corretoraUrl);

    return (body: body, statusCode: statusCode);
  }

  /// Busca por corretoras através do CNPJ nos arquivos da CVM.
  Future<({String body, int statusCode})> searchCorretoraInformation({
    required String cnpj,
  }) async {
    final (:body, :statusCode) = await Http.get(url: '$_corretoraUrl/$cnpj');

    return (body: body, statusCode: statusCode);
  }
}
