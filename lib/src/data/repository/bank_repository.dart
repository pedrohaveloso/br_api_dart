part of 'br_api_repository.dart';

extension BankRepository on BrApiRepository {
  Future<List<Bank>> filterAllBankInformation() async {
    final (body: body, statusCode: _) =
        await _brApiDatasource.allBankInformation();

    final List bodyList = jsonDecode(body);

    return bodyList.map((bank) => Bank.fromJson(bank)).toList();
  }

  Future<Bank> filterSearchBankInformation({required int bankCode}) async {
    final (body: body, statusCode: _) =
        await _brApiDatasource.searchBankInformation(bankCode: bankCode);

    final Map<String, dynamic> bodyMap = jsonDecode(body);

    return Bank.fromJson(bodyMap);
  }
}
