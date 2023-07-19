part of 'br_api_repository.dart';

/// Filtra as informações sobre um dominio no registro.br
extension DomainRepository on BrApiRepository {
  /// Filtra as informações do status de um dominio .br
  Future<Domain> filterSearchDomain({required String domain}) async {
    final (:body, statusCode: _) = await _brApiDatasource.searchDomain(
      domain: domain,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return Domain.fromJson(bodyMap);
  }
}
