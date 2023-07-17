// Dependência http: ^1.1.0
import 'package:http/http.dart' as http;

/// Classe para comunicações HTTP.
///
/// Utilizando, atualmente, a dependência [http] para seu funcionamento.
class Http {
  /// Envia uma requisição HTTP GET à uma URL informada. Podem também enviar
  /// headers, caso necessário.
  ///
  /// Retorna o corpo e o código de status da requisição em um record.
  ///
  /// Pode ser usada como abaixo:
  /// ```dart
  /// final (:body, :statusCode) = await Http.get(url: 'https://pub.dev/');
  /// print('$body $statusCode');
  /// ```
  static Future<({String body, int statusCode})> get({
    required String url,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await http.get(Uri.parse(url), headers: headers);

      final body = response.body;
      final statusCode = response.statusCode;

      return (body: body, statusCode: statusCode);
    } catch (error) {
      rethrow;
    }
  }
}
