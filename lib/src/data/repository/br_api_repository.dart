import 'dart:convert';

import 'package:br_api/src/bank.dart';
import 'package:br_api/src/data/datasource/br_api_datasource.dart';

part 'bank_repository.dart';

/// Realiza a filtragem dos dados das requisições na API.
class BrApiRepository {
  final _brApiDatasource = BrApiDatasource();
}
