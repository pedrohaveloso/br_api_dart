import 'dart:convert';

import 'package:br_api/src/data/datasource/br_api_datasource.dart';
import 'package:br_api/src/models/bank.dart';
import 'package:br_api/src/models/brokerage.dart';
import 'package:br_api/src/models/cep_v1.dart';
import 'package:br_api/src/models/cep_v2.dart';
import 'package:br_api/src/models/company.dart';
import 'package:br_api/src/models/cptec/city_cptec.dart';
import 'package:br_api/src/models/cptec/ocean_forecast_cptec.dart';
import 'package:br_api/src/models/cptec/weather_conditions_cptec.dart';
import 'package:br_api/src/models/cptec/weather_forecast_cptec.dart';
import 'package:br_api/src/models/ddd.dart';
import 'package:br_api/src/models/fipe/brand_fipe.dart';
import 'package:br_api/src/models/fipe/table_fipe.dart';
import 'package:br_api/src/models/fipe/vehicle_fipe.dart';
import 'package:br_api/src/models/holiday.dart';

part 'bank_repository.dart';
part 'brokerage_repository.dart';
part 'cep_v1_repository.dart';
part 'cep_v2_repository.dart';
part 'cnpj_repository.dart';
part 'cptec_repository.dart';
part 'ddd_repository.dart';
part 'fipe_repository.dart';
part 'holiday_repository.dart';

/// Realiza a filtragem dos dados das requisições na API.
class BrApiRepository {
  final _brApiDatasource = BrApiDatasource();
}
