import 'package:br_api/br_api.dart';

void main() async {
  final banks = await Bank.allBankInformation();
  print(banks[0].fullName);
}
