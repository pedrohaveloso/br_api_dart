import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações sobre sistema bancário.
class Bank {
  /// Informações disponíveis.
  Bank({
    this.ispb,
    this.name,
    this.code,
    this.fullName,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Bank.fromJson(Map<String, dynamic> json) {
    return Bank(
      ispb: json['ispb'].toString(),
      name: json['name'].toString(),
      code: json['code'] as int?,
      fullName: json['fullName'].toString(),
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  /// IPSB do banco.
  final String? ispb;

  /// Nome do banco.
  final String? name;

  /// Código do banco.
  final int? code;

  /// Nome completo do banco.
  final String? fullName;

  /// Erros encontrados na requisição.
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

  /// Busca as informações de um banco a partir de um código.
  static Future<Bank> searchBankInformation({required int bankCode}) async {
    return _brApiRepository.filterSearchBankInformation(
      bankCode: bankCode,
    );
  }
}
