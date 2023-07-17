import 'dart:convert';

import 'package:br_api/src/data/datasource/br_api_datasource.dart';
import 'package:br_api/src/br_api.dart';

part 'bank_repository.dart';

class BrApiRepository {
  final _brApiDatasource = BrApiDatasource();
}
