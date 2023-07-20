import 'package:br_api/src/external/http.dart';

part 'bank_datasource.dart';
part 'book_datasource.dart';
part 'cep_v1_datasource.dart';
part 'cep_v2_datasource.dart';
part 'cnpj_datasource.dart';
part 'brokerage_datasource.dart';
part 'cptec_datasource.dart';
part 'ddd_datasource.dart';
part 'domain_datasource.dart';
part 'holiday_datasource.dart';
part 'fipe_datasource.dart';
part 'ibge_datasource.dart';
part 'pix_datasource.dart';

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
  final _ibgeUrls = (
    cities: 'https://brasilapi.com.br/api/ibge/municipios/v1',
    providers: '?providers=dados-abertos-br,gov,wikipedia',
    states: 'https://brasilapi.com.br/api/ibge/uf/v1',
  );
  final _domainUrl = 'https://brasilapi.com.br/api/registrobr/v1';
  final _pixUrl = 'https://brasilapi.com.br/api/pix/v1/participants';
  final _bookUrl = 'https://brasilapi.com.br/api/isbn/v1';
}
