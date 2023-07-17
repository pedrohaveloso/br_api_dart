import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações sobre sistema bancário.
class Bank {
  /// Informações disponíveis.
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
      ispb: json['ispb'].toString(),
      name: json['name'].toString(),
      code: json['code'] as int?,
      fullName: json['fullName'].toString(),
      errors: {
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  final String? ispb;
  final String? name;
  final int? code;
  final String? fullName;
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
