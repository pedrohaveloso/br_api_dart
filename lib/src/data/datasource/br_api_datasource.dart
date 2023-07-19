import 'package:br_api/src/external/http.dart';

part 'bank_datasource.dart';
part 'cep_v1_datasource.dart';
part 'cep_v2_datasource.dart';
part 'cnpj_datasource.dart';
part 'brokerage_datasource.dart';
part 'cptec_datasource.dart';
part 'ddd_datasource.dart';
part 'holiday_datasource.dart';
part 'fipe_datasource.dart';

/// Realiza a comunicação com a [Brasil API](https://brasilapi.com.br).
class BrApiDatasource {
  final _banksUrl = 'https://brasilapi.com.br/api/banks/v1';
  final _cepV1Url = 'https://brasilapi.com.br/api/cep/v1';
  final _cepV2Url = 'https://brasilapi.com.br/api/cep/v2';
  final _cnpjUrl = 'https://brasilapi.com.br/api/cnpj/v1';
  final _brokerageUrl = 'https://brasilapi.com.br/api/cvm/corretoras/v1';
  final _cptecUrls = (
    locality: 'https://brasilapi.com.br/api/cptec/v1/cidade',
    capitals: 'https://brasilapi.com.br/api/cptec/v1/clima/capital',
    airports: 'https://brasilapi.com.br/api/cptec/v1/clima/aeroporto',
    forecast: 'https://brasilapi.com.br/api/cptec/v1/clima/previsao',
    ocean: 'https://brasilapi.com.br/api/cptec/v1/ondas',
  );
  final _dddUrl = 'https://brasilapi.com.br/api/ddd/v1';
  final _holidaysUrl = 'https://brasilapi.com.br/api/feriados/v1';
  final _fipeUrls = (
    brands: 'https://brasilapi.com.br/api/fipe/marcas/v1',
    price: 'https://brasilapi.com.br/api/fipe/preco/v1',
    tables: 'https://brasilapi.com.br/api/fipe/tabelas/v1',
  );
}
