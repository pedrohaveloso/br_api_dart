part of 'br_api_datasource.dart';

extension BankDatasource on BrApiDatasource {
  Future<({String body, int statusCode})> allBankInformation() async {
    final (:body, :statusCode) = await Http.get(url: _banksUrl);

    return (body: body, statusCode: statusCode);
  }

  Future<({String body, int statusCode})> searchBankInformation({
    required int bankCode,
  }) async {
    return await Http.get(url: "$_banksUrl/$bankCode");
  }
}
