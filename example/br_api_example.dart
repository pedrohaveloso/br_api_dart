import 'dart:developer';
import 'package:br_api/br_api.dart';

void main() async {
  final bank = await Bank.searchBankInformation(bankCode: 82);
  log(bank.fullName!);
}
