import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações referentes ao PIX.
class Pix {
  /// Informações disponíveis.
  Pix({
    this.ispb,
    this.name,
    this.shortName,
    this.participationMode,
    this.participationType,
    this.startOperation,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Pix.fromJson(Map<String, dynamic> json) {
    return Pix(
      ispb: json['ispb'].toString(),
      name: json['nome'].toString(),
      shortName: json['nome_reduzido'].toString(),
      participationMode: json['modalidade_participacao'].toString(),
      participationType: json['tipo_participacao'].toString(),
      startOperation: json['inicio_operacao'].toString(),
      errors: {
        'message': json['message'],
        'type': json['type'],
        'name': json['name'],
      },
    );
  }

  /// ISPB
  final String? ispb;

  /// Nome do participante.
  final String? name;

  /// Nome reduzido do participante.
  final String? shortName;

  /// Modalidade de participação.
  final String? participationMode;

  /// Tipo de participante.
  final String? participationType;

  /// Date de inicio da operação.
  final String? startOperation;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['ispb'] = ispb;
    data['name'] = name;
    data['shortName'] = shortName;
    data['participationMode'] = participationMode;
    data['participationType'] = participationType;
    data['startOperation'] = startOperation;
    return data;
  }

  /// Retorna informações de todos os participantes do PIX no dia atual ou
  /// anterior.
  static Future<List<Pix>> listPixParticipants() {
    return _brApiRepository.filterFistPixParticipants();
  }
}
