import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações referentes a NCMs
class Ncm {
  /// Informações disponíveis.
  Ncm({
    this.code,
    this.desc,
    this.startDate,
    this.endDate,
    this.actType,
    this.actNumber,
    this.year,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Ncm.fromJson(Map<String, dynamic> json) {
    return Ncm(
      code: json['codigo'].toString(),
      desc: json['descricao'].toString(),
      startDate: json['data_inicio'].toString(),
      endDate: json['data_fim'].toString(),
      actType: json['tipo_ato'].toString(),
      actNumber: json['numero_ato'].toString(),
      year: json['ano_ato'].toString(),
      errors: {
        'message': json['message'],
        'type': json['type'],
        'name': json['name'],
      },
    );
  }

  /// Código do NCM.
  final String? code;

  /// Descrição do NCM.
  final String? desc;

  /// Data de início.
  final String? startDate;

  /// Data de fim.
  final String? endDate;

  /// Tipo de ato.
  final String? actType;

  /// Número do ato.
  final String? actNumber;

  /// Ano.
  final String? year;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['code'] = code;
    data['desc'] = desc;
    data['start_date'] = startDate;
    data['end_date'] = endDate;
    data['act_type'] = actType;
    data['act_number'] = actNumber;
    data['year'] = year;
    return data;
  }

  /// Retorna informações de todos os NCMs.
  static Future<List<Ncm>> allNcm() async {
    return _brApiRepository.filterAllNcm();
  }

  /// Pesquisa por NCMs a partir de um código ou descrição.
  static Future<List<Ncm>> searchNcms({
    required String code,
  }) async {
    return _brApiRepository.filterSearchNcms(code: code);
  }

  /// Busca as informações de um NCM a partir de um código.
  static Future<Ncm> searchNcm({
    required String code,
  }) async {
    return _brApiRepository.filterSearchNcm(code: code);
  }
}
