import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações sobre livros publicados no Brasil (prefixo `65` ou `85`) a
/// partir do ISBN, um sistema internacional de identificação de livros que
/// utiliza números para classificá-los por título, autor, país, editora e
/// edição.
class Book {
  /// Informações disponíveis.
  Book({
    this.isbn,
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.synopsis,
    this.dimensions,
    this.year,
    this.format,
    this.pageCount,
    this.subjects,
    this.location,
    this.retailPrice,
    this.coverUrl,
    this.provider,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      isbn: json['isbn'].toString(),
      title: json['title'].toString(),
      subtitle: json['subtitle'].toString(),
      authors: json['authors'] as List<dynamic>?,
      publisher: json['publisher'].toString(),
      synopsis: json['synopsis'].toString(),
      dimensions: json['dimensions'] as Map<dynamic, dynamic>?,
      year: json['year'] as int?,
      format: json['format'].toString(),
      pageCount: json['page_count'] as int?,
      subjects: json['subjects'] as List<dynamic>?,
      location: json['location'].toString(),
      retailPrice: json['page_count'].toString(),
      coverUrl: json['cover_url'].toString(),
      provider: json['provider'].toString(),
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  /// Código ISBN.
  final String? isbn;

  /// Título do livro.
  final String? title;

  /// Subtítulo do livro.
  final String? subtitle;

  /// Autores do livro.
  final List<dynamic>? authors;

  /// Editora do livro.
  final String? publisher;

  /// Sinopse do livro.
  final String? synopsis;

  /// Dimensões (tamanho) do livro.
  final Map<dynamic, dynamic>? dimensions;

  /// Ano de publicação.
  final int? year;

  /// Formato do livro. Enum: `"PHYSICAL"` `"DIGITAL"`.
  final String? format;

  /// Quantidade de páginas.
  final int? pageCount;

  /// Temas/assuntos do livro.
  final List<dynamic>? subjects;

  /// Localização.
  final String? location;

  /// Preço de tabela.
  final Object? retailPrice;

  /// URL da capa.
  final String? coverUrl;

  /// Provedor. Enum: `"cbl"` `"mercado-editorial"` `"open-library"`
  /// `"google-books"`.
  final String? provider;

  /// Erros encontrados na requisição.
  final Map<dynamic, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isbn'] = isbn;
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['authors'] = authors;
    data['publisher'] = publisher;
    data['synopsis'] = synopsis;
    data['dimensions'] = dimensions;
    data['year'] = year;
    data['format'] = format;
    data['page_count'] = pageCount;
    data['subjects'] = subjects;
    data['location'] = location;
    data['retail_price'] = retailPrice;
    data['cover_url'] = coverUrl;
    data['provider'] = provider;
    return data;
  }

  /// Informações sobre o livro a partir do ISBN.
  static Future<Book> searchBook({required String isbn}) {
    return _brApiRepository.filterSearchBook(isbn: isbn);
  }
}
