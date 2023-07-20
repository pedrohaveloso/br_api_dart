part of 'br_api_datasource.dart';

/// Informações referentes ao PIX.
extension PixDatasource on BrApiDatasource {
  /// Retorna informações de todos os participantes do PIX no dia atual ou
  /// anterior.
  Future<({String body, int statusCode})> listPixParticipants() async {
    final (:body, :statusCode) = await Http.get(url: _pixUrl);

    return (body: body, statusCode: statusCode);
  }
}
