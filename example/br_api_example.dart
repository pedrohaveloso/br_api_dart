import 'package:br_api/br_api.dart';

void main() async {
  final cepV1 = await CepV1.searchCepV1(cep: 17512151);
  print(cepV1.city);
}
