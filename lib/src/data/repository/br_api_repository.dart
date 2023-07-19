import 'dart:convert';

import 'package:br_api/br_api.dart';
import 'package:br_api/src/data/datasource/br_api_datasource.dart';

part 'bank_repository.dart';
part 'brokerage_repository.dart';
part 'cep_v1_repository.dart';
part 'cep_v2_repository.dart';
part 'cnpj_repository.dart';
part 'cptec_repository.dart';
part 'ddd_repository.dart';
part 'domain_repository.dart';
part 'fipe_repository.dart';
part 'holiday_repository.dart';
part 'ibge_repository.dart';
part 'pix_repository.dart';

/// Realiza a filtragem dos dados das requisições na API.
class BrApiRepository {
  final _brApiDatasource = BrApiDatasource();
}
