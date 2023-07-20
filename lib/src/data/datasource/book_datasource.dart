part of 'br_api_datasource.dart';

/// Informações sobre livros publicados no Brasil (prefixo `65` ou `85`) a
/// partir do ISBN, um sistema internacional de identificação de livros que
/// utiliza números para classificá-los por título, autor, país, editora e
/// edição.
extension BookDatasource on BrApiDatasource {
  /// Informações sobre o livro a partir do ISBN.
  Future<({String body, int statusCode})> searchBook({
    required String isbn,
  }) async {
    final (:body, :statusCode) = await Http.get(url: '$_bookUrl/$isbn');

    return (body: body, statusCode: statusCode);
  }
}
