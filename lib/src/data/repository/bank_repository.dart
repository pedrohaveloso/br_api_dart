part of 'br_api_repository.dart';

/// Filtragem das informações sobre sistema bancário.
extension BankRepository on BrApiRepository {
  /// Filtragem das informações de todos os bancos do Brasil.
  Future<List<Bank>> filterAllBankInformation() async {
    final (:body, statusCode: _) = await _brApiDatasource.allBankInformation();

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map((bank) => Bank.fromJson(bank as Map<String, dynamic>))
        .toList();
  }

  /// Filtragem das informações de um banco a partir de um código
  Future<Bank> filterSearchBankInformation({required int bankCode}) async {
    final (:body, statusCode: _) =
        await _brApiDatasource.searchBankInformation(bankCode: bankCode);

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return Bank.fromJson(bodyMap);
  }
}
