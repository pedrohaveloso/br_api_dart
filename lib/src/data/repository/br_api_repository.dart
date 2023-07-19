import 'dart:convert';

import 'package:br_api/src/bank.dart';
import 'package:br_api/src/cep_v1.dart';
import 'package:br_api/src/cep_v2.dart';
import 'package:br_api/src/cnpj.dart';
import 'package:br_api/src/corretora.dart';
import 'package:br_api/src/cptec.dart';
import 'package:br_api/src/data/datasource/br_api_datasource.dart';
import 'package:br_api/src/ddd.dart';
import 'package:br_api/src/feriado.dart';
import 'package:br_api/src/fipe.dart';

part 'bank_repository.dart';
part 'cep_v1_repository.dart';
part 'cep_v2_repository.dart';
part 'cnpj_repository.dart';
part 'corretora_repository.dart';
part 'cptec_repository.dart';
part 'ddd_repository.dart';
part 'feriado_repository.dart';
part 'fipe_repository.dart';

/// Realiza a filtragem dos dados das requisições na API.
class BrApiRepository {
  final _brApiDatasource = BrApiDatasource();
}
