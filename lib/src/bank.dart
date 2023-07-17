import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações sobre sistema bancário.
class Bank {
  /// Informações disponíveis:
  Bank({
    required this.ispb,
    required this.name,
    required this.code,
    required this.fullName,
    required this.errors,
  });

  /// Obter os dados por um json.
  factory Bank.fromJson(Map<String, dynamic> json) {
    return Bank(
      ispb: json['ispb'] as String?,
      name: json['name'] as String?,
      code: json['code'] as int?,
      fullName: json['fullName'] as String?,
      errors: {
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  // ignore: public_member_api_docs
  final String? ispb;
  // ignore: public_member_api_docs
  final String? name;
  // ignore: public_member_api_docs
  final int? code;
  // ignore: public_member_api_docs
  final String? fullName;
  // ignore: public_member_api_docs
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['ispb'] = ispb;
    data['name'] = name;
    data['code'] = code;
    data['fullName'] = fullName;
    return data;
  }

  /// Retorna informações de todos os bancos do Brasil.
  static Future<List<Bank>> allBankInformation() async {
    return _brApiRepository.filterAllBankInformation();
  }

  /// Busca as informações de um banco a partir de um código
  static Future<Bank> searchBankInformation({required int bankCode}) async {
    return _brApiRepository.filterSearchBankInformation(
      bankCode: bankCode,
    );
  }
}
