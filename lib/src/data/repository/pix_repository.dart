part of 'br_api_repository.dart';

/// Filtragem das informações referentes ao PIX.
extension PixRepository on BrApiRepository {
  /// Filtragem informações de todos os participantes do PIX no dia atual ou
  /// anterior.
  Future<List<Pix>> filterFistPixParticipants() async {
    final (:body, statusCode: _) = await _brApiDatasource.listPixParticipants();

    final bodyList = jsonDecode(body) as List;

    return bodyList
        .map(
          (participants) => Pix.fromJson(
            participants as Map<String, dynamic>,
          ),
        )
        .toList();
  }
}
