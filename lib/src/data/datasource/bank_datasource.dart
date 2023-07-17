part of 'br_api_datasource.dart';

/// Informações sobre sistema bancário.
extension BankDatasource on BrApiDatasource {
  /// Retorna informações de todos os bancos do Brasil.
  Future<({String body, int statusCode})> allBankInformation() async {
    final (:body, :statusCode) = await Http.get(url: _banksUrl);

    return (body: body, statusCode: statusCode);
  }

  /// Busca as informações de um banco a partir de um código
  Future<({String body, int statusCode})> searchBankInformation({
    required int bankCode,
  }) async {
    return Http.get(url: '$_banksUrl/$bankCode');
  }
}
