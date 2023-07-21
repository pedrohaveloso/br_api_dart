part of 'br_api_repository.dart';

/// Filtragem das informações sobre livros publicados no Brasil (prefixo `65`
/// ou `85`) a partir do ISBN, um sistema internacional de identificação de
/// livros que utiliza números para classificá-los por título, autor, país,
/// editora e edição.
extension BookRepository on BrApiRepository {
  /// Informações sobre o livro a partir do ISBN.
  Future<Book> filterSearchBook({required String isbn}) async {
    final (:body, statusCode: _) = await _brApiDatasource.searchBook(
      isbn: isbn,
    );

    final bodyMap = jsonDecode(body) as Map<String, dynamic>;

    return Book.fromJson(bodyMap);
  }
}
