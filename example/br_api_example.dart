import 'package:br_api/br_api.dart';

void main() async {
  final cepV1 = await CepV1.searchCepV1(cep: 17512151);
  print(cepV1.city);

  final cepV2 = await CepV2.searchCepV2(cep: 17512151);
  print(cepV2.city);

  final cnpj = await Cnpj.searchCnpj(cnpj: '06947283000160');
  print(cnpj.porte);

  final corretora = await Corretora.searchCorretoraInformation(
    cnpj: '33764366000196',
  );
  print(corretora.cep);
}
