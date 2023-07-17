part of 'br_api.dart';

class Bank {
  static final _brApiRepository = BrApiRepository();

  final String? ispb;
  final String? name;
  final int? code;
  final String? fullName;

  Bank({
    required this.ispb,
    required this.name,
    required this.code,
    required this.fullName,
  });

  factory Bank.fromJson(Map<String, dynamic> json) {
    return Bank(
      ispb: json['ispb'],
      name: json['name'],
      code: json['code'],
      fullName: json['fullName'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['ispb'] = ispb;
    data['name'] = name;
    data['code'] = code;
    data['fullName'] = fullName;
    return data;
  }

  static Future<List<Bank>> allBankInformation() async {
    return await _brApiRepository.filterAllBankInformation();
  }

  static Future<Bank> searchBankInformation({required int bankCode}) async {
    return await _brApiRepository.filterSearchBankInformation(
      bankCode: bankCode,
    );
  }
}
