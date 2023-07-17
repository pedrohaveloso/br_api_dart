import 'package:br_api/src/external/http.dart';

part 'bank_datasource.dart';
part 'cep_v1_datasource.dart';
part 'cep_v2_datasource.dart';
part 'cnpj_datasource.dart';

/// Realiza a comunicação com a [Brasil API](https://brasilapi.com.br).
class BrApiDatasource {
  final _banksUrl = 'https://brasilapi.com.br/api/banks/v1';
  final _cepV1Url = 'https://brasilapi.com.br/api/cep/v1';
  final _cepV2Url = 'https://brasilapi.com.br/api/cep/v2';
  final _cnpjUrl = 'https://brasilapi.com.br/api/cnpj/v1';
}
