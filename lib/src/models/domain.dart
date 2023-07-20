import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Avalia um dominio no registro.br.
class Domain {
  /// Informações disponíveis.
  Domain({
    this.statusCode,
    this.status,
    this.fqdn,
    this.suggestions,
    this.hosts,
    this.publicationStatus,
    this.expiresAt,
    this.reasons,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Domain.fromJson(Map<String, dynamic> json) {
    return Domain(
      statusCode: json['status_code'] as int?,
      status: json['status'].toString(),
      fqdn: json['fqdn'].toString(),
      suggestions: json['suggestions'] as List?,
      hosts: json['hosts'] as List?,
      publicationStatus: json['publication-status'].toString(),
      expiresAt: json['expires-at'].toString(),
      reasons: json['reasons'] as List?,
      errors: {
        'message': json['message'],
        'type': json['type'],
        'name': json['name'],
      },
    );
  }

  /// Código de status. Disponíveis:
  ///
  /// - 0 `domínio disponível.`
  /// - 1 `disponível com tickets concorrentes.`
  /// - 2 `já registrado.`
  /// - 3 `indisponível.`
  /// - 4 `inválido.`
  /// - 5 `aguardando processo de liberação.`
  /// - 6 `disponível no processo de liberação em andamento.`
  /// - 7 `disponível no processo de liberação em andamento com tickets
  /// concorrentes.`
  /// - 8 `erro.`
  /// - 9 `domínio em processo de liberação competitivo.`
  /// - 10 `desconhecido.`
  final int? statusCode;

  /// Status. Disponíveis:
  ///
  /// - AVAILABLE
  /// - AVAILABLE_WITH_TICKET
  /// - REGISTERED
  /// - UNAVAILABLE
  /// - INVALID_QUERY
  /// - RELEASE_WAITING
  /// - RELEASE_IN_PROGRESS
  /// - RELEASE_IN_PROGRESS_WITH_TICKETS
  /// - ERROR
  /// - DOMAIN_PROCESS_RELEASE
  /// - UNKNOW
  final String? status;

  /// Domínio pesquisado.
  final String? fqdn;

  /// Caso o dominio esteja indisponivel, o registro poderá sugerir extensões
  /// disponíveis para o registro.
  final List<dynamic>? suggestions;

  /// CDN's de um domínio publicado.
  final List<dynamic>? hosts;

  /// Status de um dominio registrado.
  final String? publicationStatus;

  /// Vencimento do domínio.
  final String? expiresAt;

  /// Justificativas da indisponibilidade de registro ainda não registrado.
  final List<dynamic>? reasons;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status_code'] = statusCode;
    data['status'] = status;
    data['fqdn'] = fqdn;
    data['suggestions'] = suggestions;
    data['hosts'] = hosts;
    data['publication_status'] = publicationStatus;
    data['expires_at'] = expiresAt;
    data['reasons'] = reasons;
    return data;
  }

  /// Avalia o status de um dominio .br.
  static Future<Domain> searchDomain({required String domain}) {
    return _brApiRepository.filterSearchDomain(domain: domain);
  }
}
