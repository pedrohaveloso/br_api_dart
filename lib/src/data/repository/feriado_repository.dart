part of 'br_api_repository.dart';

/// Filtragem das informações sobre feriados nacionais.
extension FeriadoRepository on BrApiRepository {
  /// Filtragem da lista dos feriados nacionais de determinado ano.
  Future<List<Feriado>> filterListFeriados({required int year}) async {
    final (:body, statusCode: _) = await _brApiDatasource.listFeriados(
      year: year,
    );

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (feriado) => Feriado.fromJson(
            feriado as Map<String, dynamic>,
          ),
        )
        .toList();
  }
}
