// ignore_for_file: avoid_print

import 'package:br_api/br_api.dart';
import 'package:test/test.dart';

void main() {
  group('Banks', () {
    test('All Bank Information', () async {
      final banks = await Bank.allBankInformation();
      for (final bank in banks) {
        print('NOME:${bank.name}');
        print('CÓDIGO: ${bank.code}');
        print('IPSB:${bank.ispb}');
        print('NOME COMPLETO:${bank.fullName}');
        print('-');
      }
    });

    test('Search Bank Information', () async {
      final bank = await Bank.searchBankInformation(bankCode: 10);
      print('NOME:${bank.name}');
      print('CÓDIGO: ${bank.code}');
      print('IPSB:${bank.ispb}');
      print('NOME COMPLETO:${bank.fullName}');
      print('-');
    });
  });

  group('CEP V1', () {
    test('Search Cep', () async {
      final cep = await CepV1.searchCepV1(cep: 17500100);
      print('CEP: ${cep.cep}');
      print('CIDADE: ${cep.city}');
      print('SERVIÇO: ${cep.service}');
      print('BAIRRO: ${cep.neighborhood}');
      print('ESTADO: ${cep.state}');
      print('RUA: ${cep.street}');
      print('-');
    });
  });

  group('CEP V2', () {
    test('Search Cep', () async {
      final cep = await CepV2.searchCepV2(cep: 17500100);
      print('CEP: ${cep.cep}');
      print('CIDADE: ${cep.city}');
      print('SERVIÇO: ${cep.service}');
      print('BAIRRO: ${cep.neighborhood}');
      print('ESTADO: ${cep.state}');
      print('RUA: ${cep.street}');
      print('LOCALIZAÇÃO: ${cep.location}');
      print('-');
    });
  });

  group('CNPJ', () {
    test('Search CNPJ', () async {
      final company = await Company.searchCnpj(cnpj: '90400888000142');
      print('CNPJ: ${company.cnpj}');
      print('CÓDIGO MATRIZ/FILIAL: ${company.parentSubsidiaryIdentifier}');
      print('DESCRIÇÃO MATRIZ/FILIAL: ${company.descriptionSubsidiary}');
      print('RAZÃO SOCIAL: ${company.socialReason}');
      print('NOME FANTASIA: ${company.tradingName}');
      print('SITUAÇÃO CADASTRAL: ${company.cadastralSituation}');
      print('DESCRIÇÃO SC: ${company.descriptionCadastralSituation}');
      print('DATA SITUAÇÃO CADASTRAL: ${company.dateCadastralSituation}');
      print('CÓDIGO MOTIVO SC: ${company.reasonCadastralSituation}');
      print('NOME CIDADE EXTERIOR: ${company.nameCityExterior}');
      print('CÓDIGO DA NATUREZA JURÍDICA: ${company.juridicalNatureCode}');
      print('DATA INÍCIO ATIVIDADES; ${company.dateStartActivity}');
      print('CNAE FISCAL: ${company.cnaeFiscal}');
      print('DESCRIÇÃO CNAE FISCAL: ${company.cnaeFiscalDesc}');
      print('DESCRIÇÃO TIPO LOGRADOURO: ${company.descStreetType}');
      print('LOGRADOURO: ${company.street}');
      print('TELEFONE: ${company.phone}');
      print('COMPLEMENTO: ${company.complement}');
      print('BAIRRO: ${company.neighborhood}');
      print('CEP:${company.cep}');
      print('UF: ${company.uf}');
      print('CÓDIGO DA CIDADE: ${company.cityCode}');
      print('CIDADE: ${company.city}');
      print('DDD TELEFONE 1: ${company.dddPhone1}');
      print('DDD TELEGONE 2: ${company.dddPhone2}');
      print('DDD FAX: ${company.dddFax}');
      print('QUALIFICAÇÃO RESPONSÁVEL: ${company.responsibleQualification}');
      print('CAPITAL SOCIAL: ${company.capitalSocial}');
      print('PORTE DA EMPRESA: ${company.companySize}');
      print('DESCRIÇÃO DO PORTE: ${company.descCompanySize}');
      print('OPÇÃO PELO SIMPLES: ${company.simpleOption}');
      print('DATA OPÇÃO PELO SIMPLES: ${company.simpleOptionDate}');
      print('DATA EXCLUSÃO DO SIMPLES: ${company.dateExclusionSimples}');
      print('OPÇÃO PELO MEI: ${company.optionMei}');
      print('SITUAÇÃO ESPECIAL: ${company.specialSituation}');
      print('DATA SITUAÇÃO ESPECIAL: ${company.dateSpecialSituation}');
      print('CNAES SECUNDÁRIOS: ${company.secondaryCnaes}');
      print('QSA: ${company.qsa}');
      print('-');
    });
  });

  group('Brokerage', () {
    test('All Brokerage Information', () async {
      final brokerages = await Brokerage.allBrokerageInformation();
      for (final brokerage in brokerages) {
        print('CNPJ: ${brokerage.cnpj}');
        print('NOME SOCIAL: ${brokerage.socialName}');
        print('NOME COMERCIAL: ${brokerage.commercialName}');
        print('BAIRRO: ${brokerage.neighborhood}');
        print('CEP: ${brokerage.cep}');
        print('CÓDIGO CVM: ${brokerage.cvmCode}');
        print('COMPLEMENTO: ${brokerage.complement}');
        print('DATA DA SITUAÇÃO CADASTRAL: ${brokerage.dateCurrentSituation}');
        print('DATA PATRIMÔNIO LÍQUIDO: ${brokerage.dateNetWorth}');
        print('DATA DE REGISTRO: ${brokerage.dateRegistration}');
        print('E-MAIL: ${brokerage.email}');
        print('RUA: ${brokerage.street}');
        print('CIDADE: ${brokerage.city}');
        print('PAÍS: ${brokerage.country}');
        print('TELEFONE: ${brokerage.phone}');
        print('UF: ${brokerage.uf}');
        print('VALOR PATRIMÔNIO LÍQUIDO: ${brokerage.valueNetWorth}');
        print('-');
      }
    });

    test('Search Brokerage Information', () async {
      final brokerage = await Brokerage.searchBrokerageInformation(
        cnpj: '92875780000131',
      );
      print('CNPJ: ${brokerage.cnpj}');
      print('NOME SOCIAL: ${brokerage.socialName}');
      print('NOME COMERCIAL: ${brokerage.commercialName}');
      print('BAIRRO: ${brokerage.neighborhood}');
      print('CEP: ${brokerage.cep}');
      print('CÓDIGO CVM: ${brokerage.cvmCode}');
      print('COMPLEMENTO: ${brokerage.complement}');
      print('DATA DA SITUAÇÃO CADASTRAL: ${brokerage.dateCurrentSituation}');
      print('DATA PATRIMÔNIO LÍQUIDO: ${brokerage.dateNetWorth}');
      print('DATA DE REGISTRO: ${brokerage.dateRegistration}');
      print('E-MAIL: ${brokerage.email}');
      print('RUA: ${brokerage.street}');
      print('CIDADE: ${brokerage.city}');
      print('PAÍS: ${brokerage.country}');
      print('TELEFONE: ${brokerage.phone}');
      print('UF: ${brokerage.uf}');
      print('VALOR PATRIMÔNIO LÍQUIDO: ${brokerage.valueNetWorth}');
      print('-');
    });
  });

  group('CPTEC', () {
    group('City', () {
      test('List All Locations', () async {
        final cities = await CityCptec.listAllLocations();
        for (final city in cities) {
          print('NOME: ${city.name}');
          print('ESTADO: ${city.state}');
          print('ID: ${city.id}');
          print('-');
        }
      });

      test('Search Locations', () async {
        final cities = await CityCptec.searchLocations(cityName: 'Brasília');
        for (final city in cities) {
          print('NOME: ${city.name}');
          print('ESTADO: ${city.state}');
          print('ID: ${city.id}');
          print('-');
        }
      });
    });

    group('Weather Conditions', () {
      test('Capital Conditions', () async {
        final capitalConditions =
            await WeatherConditionsCptec.capitalConditions();
        for (final city in capitalConditions) {
          print('CÓDIGO ICAO: ${city.icaoCode}');
          print('ATUALIZADO EM: ${city.updatedOn}');
          print('PRESSÃO ATMOSFÉRICA: ${city.atmosphericPressure}');
          print('VISIBILIDADE: ${city.visibility}');
          print('VENTO: ${city.wind}');
          print('DIREÇÃO DO VENTO: ${city.windDirection}');
          print('UMIDADE: ${city.humidity}');
          print('CONDIÇÃO: ${city.condition}');
          print('DESCRIÇÃO DA CONDIÇÃO: ${city.conditionDesc}');
          print('TEMPERATURA: ${city.temp}');
          print('-');
        }
      });

      test('Airpoirt Conditions', () async {
        final airportConditions =
            await WeatherConditionsCptec.airportConditions(icaoCode: 'SBGR');
        print('CÓDIGO ICAO: ${airportConditions.icaoCode}');
        print('ATUALIZADO EM: ${airportConditions.updatedOn}');
        print('PRESSÃO ATMOSFÉRICA: ${airportConditions.atmosphericPressure}');
        print('VISIBILIDADE: ${airportConditions.visibility}');
        print('VENTO: ${airportConditions.wind}');
        print('DIREÇÃO DO VENTO: ${airportConditions.windDirection}');
        print('UMIDADE: ${airportConditions.humidity}');
        print('CONDIÇÃO: ${airportConditions.condition}');
        print('DESCRIÇÃO DA CONDIÇÃO: ${airportConditions.conditionDesc}');
        print('TEMPERATURA: ${airportConditions.temp}');
        print('-');
      });
    });

    group('Weather Forecast', () {
      test('City', () async {
        final cityForecast =
            await WeatherForecastCptec.weatherForecastCity(cityCode: 4750);
        print('CIDADE: ${cityForecast.city}');
        print('ESTADO: ${cityForecast.state}');
        print('ATUALIZADO EM: ${cityForecast.updatedOn}');
        print('CLIMA: ${cityForecast.climate}');
        print('-');
      });

      test('City Days', () async {
        final cityForecast = await WeatherForecastCptec.weatherForecastCityDays(
          cityCode: 4750,
          days: 6,
        );
        print('CIDADE: ${cityForecast.city}');
        print('ESTADO: ${cityForecast.state}');
        print('ATUALIZADO EM: ${cityForecast.updatedOn}');
        print('CLIMA: ${cityForecast.climate}');
        print('-');
      });
    });

    group('Ocean Forecast', () {
      test('Ocean', () async {
        final oceanForecast = await OceanForecastCptec.oceanForecastCity(
          cityCode: 241,
        );
        print('CIDADE: ${oceanForecast.city}');
        print('ESTADO: ${oceanForecast.state}');
        print('ATUALIZADO EM: ${oceanForecast.updatedOn}');
        print('ONDAS: ${oceanForecast.waves}');
        print('-');
      });

      test('Ocean Days', () async {
        final oceanForecast = await OceanForecastCptec.oceanForecastCityDays(
          cityCode: 241,
          days: 6,
        );
        print('CIDADE: ${oceanForecast.city}');
        print('ESTADO: ${oceanForecast.state}');
        print('ATUALIZADO EM: ${oceanForecast.updatedOn}');
        print('ONDAS: ${oceanForecast.waves}');
        print('-');
      });
    });
  });

  group('DDD', () {
    test('State and Cities', () async {
      final statesAndCities = await Ddd.stateAndCities(ddd: 11);
      print('ESTADO: ${statesAndCities.state}');
      print('CIDADES: ${statesAndCities.cities}');
      print('-');
    });
  });

  group('Holiday', () {
    test('List Holidays', () async {
      final holidays = await Holiday.listHolidays(year: 2023);
      for (final holiday in holidays) {
        print('DATA: ${holiday.date}');
        print('NOME: ${holiday.name}');
        print('TIPO: ${holiday.type}');
        print('-');
      }
    });
  });

  group('FIPE', () {
    group('Brand', () {
      test('List Brands', () async {
        final brands = await BrandFipe.listBrands(vehicleType: 'caminhoes');
        for (final brand in brands) {
          print('NOME: ${brand.name}');
          print('VALOR: ${brand.value}');
          print('-');
        }
      });
    });

    group('Table', () {
      test('List Tables', () async {
        final tables = await TableFipe.listTables();
        for (final table in tables) {
          print(table.code);
          print(table.mounth);
          print('-');
        }
      });
    });

    group('Vehicle', () {
      test('Search Price', () async {
        final vehicles = await VehicleFipe.searchPrice(fipeCode: '0012637');
        for (final vehicle in vehicles) {
          print('${vehicle.value}');
          print('${vehicle.brand}');
          print('${vehicle.model}');
          print('${vehicle.modelYear}');
          print('${vehicle.fuel}');
          print('${vehicle.fipeCode}');
          print('${vehicle.referenceMonth}');
          print('${vehicle.typeVehicle}');
          print('${vehicle.acronymFuel}');
          print('${vehicle.dateConsultation}');
          print('-');
        }
      });
    });
  });

  group('IBGE', () {
    group('City', () {
      test('List Cities', () async {
        final cities = await CityIbge.listCities(uf: 'SP');
        for (final city in cities) {
          print('NOME: ${city.cityName}');
          print('CÓDIGO IBGE: ${city.ibgeCode}');
          print('-');
        }
      });
    });

    group('State', () {
      test('List States', () async {
        final states = await StateIbge.listStates();
        for (final state in states) {
          print('ID: ${state.id}');
          print('NOME: ${state.name}');
          print('REGIÃO: ${state.region}');
          print('SIGLA: ${state.acronym}');
          print('-');
        }
      });

      test('Search State', () async {
        final state = await StateIbge.searchState(codeOrUf: 'RJ');
        print('ID: ${state.id}');
        print('NOME: ${state.name}');
        print('REGIÃO: ${state.region}');
        print('SIGLA: ${state.acronym}');
        print('-');
      });
    });
  });

  group('Domain', () {
    test('Search Domain', () async {
      final domain = await Domain.searchDomain(domain: 'brasilapi.com.br');
      print('CÓDIGO DE STATUS: ${domain.statusCode}');
      print('STATUS: ${domain.status}');
      print('FQDN: ${domain.fqdn}');
      print('SUGESTÕES: ${domain.suggestions}');
      print('HOSTS: ${domain.hosts}');
      print('STATUS DO DOMÍNIO: ${domain.publicationStatus}');
      print('EXPIRAÇÃO: ${domain.expiresAt}');
      print('MOTIVOS: ${domain.reasons}');
      print('-');
    });
  });

  group('PIX', () {
    test('List PIX Participants', () async {
      final pixParticipants = await Pix.listPixParticipants();
      for (final participant in pixParticipants) {
        print('ISPB: ${participant.ispb}');
        print('NOME: ${participant.name}');
        print('NOME ENCURTADO: ${participant.shortName}');
        print('MODO DE PARTICIPAÇÃO: ${participant.participationMode}');
        print('TIPO DE PARTICIPAÇÃO: ${participant.participationType}');
        print('DATA INÍCIO DE OPERAÇÃO: ${participant.startOperation}');
        print('-');
      }
    });
  });

  group('Book (ISBN)', () {
    test('Search book', () async {
      final book = await Book.searchBook(isbn: '9788545702870');
      print('ISBN: ${book.isbn}');
      print('TÍTULO: ${book.title}');
      print('SUBTÍTULO: ${book.subtitle}');
      print('AUTORES:${book.authors}');
      print('EDITORA: ${book.publisher}');
      print('SINOPSE: ${book.synopsis}');
      print('DIMENSÕES: ${book.dimensions}');
      print('ANO: ${book.year}');
      print('FORMATO: ${book.format}');
      print('QUANTIDADE DE PÁGINAS: ${book.pageCount}');
      print('ASSUNTOS: ${book.subjects}');
      print('LOCALIZAÇÃO: ${book.location}');
      print('PREÇO DE TABELA: ${book.retailPrice}');
      print('URL DA CAPA: ${book.coverUrl}');
      print('PROVEDOR: ${book.provider}');
      print('-');
    });
  });

  group('NCM', () {
    test('All Ncm', () async {
      final ncms = await Ncm.allNcm();
      for (var i = 0; i < 5; i++) {
        print('CÓDIGO NCM: ${ncms[i].code}');
        print('DESCRIÇÃO: ${ncms[i].desc}');
        print('DATA DE INICIO: ${ncms[i].startDate}');
        print('DATA DE FIM: ${ncms[i].endDate}');
        print('TIPO DE ATO: ${ncms[i].actType}');
        print('NÚMERO DO ATO: ${ncms[i].actNumber}');
        print('ANO: ${ncms[i].year}');
        print('-');
      }
    });
    test('Search Ncms', () async {
      final ncms = await Ncm.searchNcms(code: '33051000');
      for (final ncm in ncms) {
        print('CÓDIGO NCM: ${ncm.code}');
        print('DESCRIÇÃO: ${ncm.desc}');
        print('DATA DE INICIO: ${ncm.startDate}');
        print('DATA DE FIM: ${ncm.endDate}');
        print('TIPO DE ATO: ${ncm.actType}');
        print('NÚMERO DO ATO: ${ncm.actNumber}');
        print('ANO: ${ncm.year}');
        print('-');
      }
    });

    test('Search Ncm', () async {
      final ncm = await Ncm.searchNcm(code: '33051000');

      print('CÓDIGO NCM: ${ncm.code}');
      print('DESCRIÇÃO: ${ncm.desc}');
      print('DATA DE INICIO: ${ncm.startDate}');
      print('DATA DE FIM: ${ncm.endDate}');
      print('TIPO DE ATO: ${ncm.actType}');
      print('NÚMERO DO ATO: ${ncm.actNumber}');
      print('ANO: ${ncm.year}');
      print('-');
    });
  });

  group('Tax', () {
    test('All Tax', () async {
      final tax = await Tax.allTax();

      for (final t in tax) {
        print('NOME: ${t.name}');
        print('VALOR: ${t.value}');
        print('-');
      }
    });

    test('Search Tax', () async {
      final tax = await Tax.searchTax(acronym: 'CDI');

      print('NOME: ${tax.name}');
      print('VALOR: ${tax.value}');
      print('-');
    });
  });
}
