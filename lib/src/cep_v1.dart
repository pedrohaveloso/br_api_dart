import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações referentes a CEPs (Versão 1).
class CepV1 {
  /// Informações disponíveis.
  CepV1({
    this.cep,
    this.state,
    this.city,
    this.neighborhood,
    this.street,
    this.service,
    this.errors,
  });

  /// Obter os dados por um json.
  factory CepV1.fromJson(Map<String, dynamic> json) {
    return CepV1(
      cep: json['cep'].toString(),
      state: json['state'].toString(),
      city: json['city'].toString(),
      neighborhood: json['neighborhood'].toString(),
      street: json['street'].toString(),
      service: json['service'].toString(),
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
        'errors': json['errors'],
      },
    );
  }

  /// CEP do local.
  final String? cep;

  /// Estado.
  final String? state;

  /// Cidade.
  final String? city;

  /// Bairro.
  final String? neighborhood;

  /// Rua.
  final String? street;

  /// Responsável pelo serviço local.
  final String? service;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['cep'] = cep;
    data['state'] = state;
    data['city'] = city;
    data['neighborhood'] = neighborhood;
    data['street'] = street;
    data['service'] = service;
    return data;
  }

  /// Busca por CEP com múltiplos providers de fallback (Versão 01).
  static Future<CepV1> searchCepV1({required int cep}) async {
    return _brApiRepository.filterSearchCepV1(cep: cep);
  }
}
