/// Dependência encapsulada para as requisições HTTP
import 'package:br_api/src/external/http.dart';

part 'bank_datasource.dart';

class BrApiDatasource {
  final _banksUrl = "https://brasilapi.com.br/api/banks/v1/";
}
