import 'package:br_api/src/data/repository/br_api_repository.dart';

/// Informações sobre Preço Médio de Veículos fornecido pela FIPE (Fundação
/// Instituto de Pesquisas Econômicas).
class Fipe {
  /// Informações disponíveis.
  Fipe({
    this.nome,
    this.valor,
    this.marca,
    this.modelo,
    this.anoModelo,
    this.combustivel,
    this.codigoFipe,
    this.mesReferencia,
    this.tipoVeiculo,
    this.siglaCombustivel,
    this.dataConsulta,
    this.codigo,
    this.mes,
    this.errors,
  });

  /// Obter os dados por um json.
  factory Fipe.fromJson(Map<String, dynamic> json) {
    return Fipe(
      nome: json['nome'].toString(),
      valor: json['valor'].toString(),
      marca: json['marca'].toString(),
      modelo: json['modelo'].toString(),
      anoModelo: json['anoModelo'] as int?,
      combustivel: json['combustivel'].toString(),
      codigoFipe: json['codigoFipe'].toString(),
      mesReferencia: json['mesReferencia'].toString(),
      tipoVeiculo: json['tipoVeiculo'] as int?,
      siglaCombustivel: json['siglaCombustivel'].toString(),
      dataConsulta: json['dataConsulta'].toString(),
      codigo: json['codigo'] as int?,
      mes: json['mes'].toString(),
      errors: {
        'name': json['name'],
        'message': json['message'],
        'type': json['type'],
      },
    );
  }

  /// Nome do veículo.
  final String? nome;

  /// Valor do veículo.
  final String? valor;

  /// Marca do veículo
  final String? marca;

  /// Modelo.
  final String? modelo;

  /// Ano do modelo.
  final int? anoModelo;

  /// Combustível usado.
  final String? combustivel;

  /// Código FIPE.
  final String? codigoFipe;

  /// Mês de referência.
  final String? mesReferencia;

  /// Tipo do veículo.
  final int? tipoVeiculo;

  /// Sigla do combustível.
  final String? siglaCombustivel;

  /// Data de consulta.
  final String? dataConsulta;

  /// Código.
  final int? codigo;

  /// Mês.
  final String? mes;

  /// Erros encontrados na requisição.
  final Map<String, dynamic>? errors;

  static final _brApiRepository = BrApiRepository();

  /// Transformar os dados em um json.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['nome'] = nome;
    data['valor'] = valor;
    data['marca'] = marca;
    data['modelo'] = modelo;
    data['anoModelo'] = anoModelo;
    data['combustivel'] = combustivel;
    data['codigoFipe'] = codigoFipe;
    data['mesReferencia'] = mesReferencia;
    data['tipoVeiculo'] = tipoVeiculo;
    data['siglaCombustivel'] = siglaCombustivel;
    data['dataConsulta'] = dataConsulta;
    data['codigo'] = codigo;
    data['mes'] = mes;
    return data;
  }

  /// Lista as marcas de veículos referente ao tipo de veículo.
  ///
  /// Os tipos suportados são `caminhoes`, `carros` e `motos`. Quando o tipo não
  /// é específicado, são buscadas as marcas de todos os tipos de veículos
  static Future<List<Fipe>> listBrands({
    required String vehicleType,
  }) async {
    return _brApiRepository.filterListBrands(vehicleType: vehicleType);
  }

  /// Consulta o preço do veículo segundo a tabela fipe.
  static Future<Fipe> searchPrice({
    required String fipeCode,
  }) async {
    return _brApiRepository.filterSearchPrice(fipeCode: fipeCode);
  }

  /// Lista as tabelas de referência existentes.
  static Future<List<Fipe>> listTables() async {
    return _brApiRepository.filterListTables();
  }
}
