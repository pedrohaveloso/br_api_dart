import 'dart:developer';

import 'package:br_api/br_api.dart';

void main() async {
  // Retorna informações de todos os bancos do Brasil.
  final banks = await Bank.allBankInformation();
  for (final bank in banks) {
    log('NOME:${bank.name}');
    log('CÓDIGO: ${bank.code}');
    log('IPSB:${bank.ispb}');
    log('NOME COMPLETO:${bank.fullName}');
    log('-');
  }

  // Busca as informações de um banco a partir de um código.
  final bank = await Bank.searchBankInformation(bankCode: 10);
  log('NOME:${bank.name}');
  log('CÓDIGO: ${bank.code}');
  log('IPSB:${bank.ispb}');
  log('NOME COMPLETO:${bank.fullName}');
  log('-');

  // Busca por CEP com múltiplos providers de fallback (Versão 01).
  final cep = await CepV1.searchCepV1(cep: 70150900);
  log('CEP: ${cep.cep}');
  log('CIDADE: ${cep.city}');
  log('SERVIÇO: ${cep.service}');
  log('BAIRRO: ${cep.neighborhood}');
  log('ESTADO: ${cep.state}');
  log('RUA: ${cep.street}');
  log('-');

  // Busca por CEP com múltiplos providers de fallback (Versão 02).
  final cepV2 = await CepV2.searchCepV2(cep: 70150900);
  log('CEP: ${cepV2.cep}');
  log('CIDADE: ${cepV2.city}');
  log('SERVIÇO: ${cepV2.service}');
  log('BAIRRO: ${cepV2.neighborhood}');
  log('ESTADO: ${cepV2.state}');
  log('RUA: ${cepV2.street}');
  log('LOCALIZAÇÃO: ${cepV2.location}');
  log('-');

  // Busca por CNPJ na API Minha Receita.
  final company = await Company.searchCnpj(cnpj: '90400888000142');
  log('CNPJ: ${company.cnpj}');
  log('CÓDIGO MATRIZ/FILIAL: ${company.parentSubsidiaryIdentifier}');
  log('DESCRIÇÃO MATRIZ/FILIAL: ${company.descriptionSubsidiary}');
  log('RAZÃO SOCIAL: ${company.socialReason}');
  log('NOME FANTASIA: ${company.tradingName}');
  log('SITUAÇÃO CADASTRAL: ${company.cadastralSituation}');
  log('DESCRIÇÃO SC: ${company.descriptionCadastralSituation}');
  log('DATA SITUAÇÃO CADASTRAL: ${company.dateCadastralSituation}');
  log('CÓDIGO MOTIVO SC: ${company.reasonCadastralSituation}');
  log('NOME CIDADE EXTERIOR: ${company.nameCityExterior}');
  log('CÓDIGO DA NATUREZA JURÍDICA: ${company.juridicalNatureCode}');
  log('DATA INÍCIO ATIVIDADES; ${company.dateStartActivity}');
  log('CNAE FISCAL: ${company.cnaeFiscal}');
  log('DESCRIÇÃO CNAE FISCAL: ${company.cnaeFiscalDesc}');
  log('DESCRIÇÃO TIPO LOGRADOURO: ${company.descStreetType}');
  log('LOGRADOURO: ${company.street}');
  log('TELEFONE: ${company.phone}');
  log('COMPLEMENTO: ${company.complement}');
  log('BAIRRO: ${company.neighborhood}');
  log('CEP:${company.cep}');
  log('UF: ${company.uf}');
  log('CÓDIGO DA CIDADE: ${company.cityCode}');
  log('CIDADE: ${company.city}');
  log('DDD TELEFONE 1: ${company.dddPhone1}');
  log('DDD TELEGONE 2: ${company.dddPhone2}');
  log('DDD FAX: ${company.dddFax}');
  log('QUALIFICAÇÃO RESPONSÁVEL: ${company.responsibleQualification}');
  log('CAPITAL SOCIAL: ${company.capitalSocial}');
  log('PORTE DA EMPRESA: ${company.companySize}');
  log('DESCRIÇÃO DO PORTE: ${company.descCompanySize}');
  log('OPÇÃO PELO SIMPLES: ${company.simpleOption}');
  log('DATA OPÇÃO PELO SIMPLES: ${company.simpleOptionDate}');
  log('DATA EXCLUSÃO DO SIMPLES: ${company.dateExclusionSimples}');
  log('OPÇÃO PELO MEI: ${company.optionMei}');
  log('SITUAÇÃO ESPECIAL: ${company.specialSituation}');
  log('DATA SITUAÇÃO ESPECIAL: ${company.dateSpecialSituation}');
  log('CNAES SECUNDÁRIOS: ${company.secondaryCnaes}');
  log('QSA: ${company.qsa}');
  log('-');

  // Retorna as corretoras nos arquivos da CVM.
  final brokerages = await Brokerage.allBrokerageInformation();
  for (final brokerage in brokerages) {
    log('CNPJ: ${brokerage.cnpj}');
    log('NOME SOCIAL: ${brokerage.socialName}');
    log('NOME COMERCIAL: ${brokerage.commercialName}');
    log('BAIRRO: ${brokerage.neighborhood}');
    log('CEP: ${brokerage.cep}');
    log('CÓDIGO CVM: ${brokerage.cvmCode}');
    log('COMPLEMENTO: ${brokerage.complement}');
    log('DATA DA SITUAÇÃO CADASTRAL: ${brokerage.dateCurrentSituation}');
    log('DATA PATRIMÔNIO LÍQUIDO: ${brokerage.dateNetWorth}');
    log('DATA DE REGISTRO: ${brokerage.dateRegistration}');
    log('E-MAIL: ${brokerage.email}');
    log('RUA: ${brokerage.street}');
    log('CIDADE: ${brokerage.city}');
    log('PAÍS: ${brokerage.country}');
    log('TELEFONE: ${brokerage.phone}');
    log('UF: ${brokerage.uf}');
    log('VALOR PATRIMÔNIO LÍQUIDO: ${brokerage.valueNetWorth}');
    log('-');
  }

  // Busca por corretoras através do CNPJ nos arquivos da CVM.
  final brokerage = await Brokerage.searchBrokerageInformation(
    cnpj: '92875780000131',
  );
  log('CNPJ: ${brokerage.cnpj}');
  log('NOME SOCIAL: ${brokerage.socialName}');
  log('NOME COMERCIAL: ${brokerage.commercialName}');
  log('BAIRRO: ${brokerage.neighborhood}');
  log('CEP: ${brokerage.cep}');
  log('CÓDIGO CVM: ${brokerage.cvmCode}');
  log('COMPLEMENTO: ${brokerage.complement}');
  log('DATA DA SITUAÇÃO CADASTRAL: ${brokerage.dateCurrentSituation}');
  log('DATA PATRIMÔNIO LÍQUIDO: ${brokerage.dateNetWorth}');
  log('DATA DE REGISTRO: ${brokerage.dateRegistration}');
  log('E-MAIL: ${brokerage.email}');
  log('RUA: ${brokerage.street}');
  log('CIDADE: ${brokerage.city}');
  log('PAÍS: ${brokerage.country}');
  log('TELEFONE: ${brokerage.phone}');
  log('UF: ${brokerage.uf}');
  log('VALOR PATRIMÔNIO LÍQUIDO: ${brokerage.valueNetWorth}');
  log('-');

  // Retorna listagem com todas as cidades junto a seus respectivos códigos
  // presentes nos serviços da CPTEC. O Código destas cidades será utilizado
  // para os serviços de meteorologia e a ondas (previsão oceânica) fornecido
  // pelo centro. Leve em consideração que o WebService do CPTEC as vezes é
  // instável, então se não encontrar uma determinada cidade na listagem
  // completa, tente buscando por parte de seu nome no endpoint de busca.
  final cities = await CityCptec.listAllLocations();
  for (final city in cities) {
    log('NOME: ${city.name}');
    log('ESTADO: ${city.state}');
    log('ID: ${city.id}');
    log('-');
  }

  // Retorna listagem com todas as cidades correspondentes ao termo pesquisado
  // junto a seus respectivos códigos presentes nos serviços da CPTEC. O
  // Código destas cidades será utilizado para os serviços de meteorologia e a
  // ondas (previsão oceânica) fornecido pelo centro.
  final cities2 = await CityCptec.searchLocations(cityName: 'Brasília');
  for (final city in cities2) {
    log('NOME: ${city.name}');
    log('ESTADO: ${city.state}');
    log('ID: ${city.id}');
    log('-');
  }

  // Retorna condições meteorológicas atuais nas capitais do país, com
  // base nas estações de solo de seu aeroporto.
  final capitalConditions = await WeatherConditionsCptec.capitalConditions();
  for (final city in capitalConditions) {
    log('CÓDIGO ICAO: ${city.icaoCode}');
    log('ATUALIZADO EM: ${city.updatedOn}');
    log('PRESSÃO ATMOSFÉRICA: ${city.atmosphericPressure}');
    log('VISIBILIDADE: ${city.visibility}');
    log('VENTO: ${city.wind}');
    log('DIREÇÃO DO VENTO: ${city.windDirection}');
    log('UMIDADE: ${city.humidity}');
    log('CONDIÇÃO: ${city.condition}');
    log('DESCRIÇÃO DA CONDIÇÃO: ${city.conditionDesc}');
    log('TEMPERATURA: ${city.temp}');
    log('-');
  }

  // Retorna condições meteorológicas atuais no aeroporto solicitado.
  final airportConditions =
      await WeatherConditionsCptec.airportConditions(icaoCode: 'SBGR');
  log('CÓDIGO ICAO: ${airportConditions.icaoCode}');
  log('ATUALIZADO EM: ${airportConditions.updatedOn}');
  log('PRESSÃO ATMOSFÉRICA: ${airportConditions.atmosphericPressure}');
  log('VISIBILIDADE: ${airportConditions.visibility}');
  log('VENTO: ${airportConditions.wind}');
  log('DIREÇÃO DO VENTO: ${airportConditions.windDirection}');
  log('UMIDADE: ${airportConditions.humidity}');
  log('CONDIÇÃO: ${airportConditions.condition}');
  log('DESCRIÇÃO DA CONDIÇÃO: ${airportConditions.conditionDesc}');
  log('TEMPERATURA: ${airportConditions.temp}');
  log('-');

  // Retorna a previsão meteorológica para 1 dia na cidade informada.
  final cityForecast =
      await WeatherForecastCptec.weatherForecastCity(cityCode: 4750);
  log('CIDADE: ${cityForecast.city}');
  log('ESTADO: ${cityForecast.state}');
  log('ATUALIZADO EM: ${cityForecast.updatedOn}');
  log('CLIMA: ${cityForecast.climate}');
  log('-');

  // Retorna a previsão meteorológica para a cidade informada para um período
  // de 1 até 6 dias. Devido a inconsistências encontradas nos retornos da
  // CPTEC, a API só consegue retornar com precisão o período máximo de 6 dias.
  final cityForecastDays = await WeatherForecastCptec.weatherForecastCityDays(
    cityCode: 4750,
    days: 6,
  );
  log('CIDADE: ${cityForecastDays.city}');
  log('ESTADO: ${cityForecastDays.state}');
  log('ATUALIZADO EM: ${cityForecastDays.updatedOn}');
  log('CLIMA: ${cityForecastDays.climate}');
  log('-');

  // Retorna a previsão oceânica para a cidade informada para 1 dia.
  final oceanForecast = await OceanForecastCptec.oceanForecastCity(
    cityCode: 241,
  );
  log('CIDADE: ${oceanForecast.city}');
  log('ESTADO: ${oceanForecast.state}');
  log('ATUALIZADO EM: ${oceanForecast.updatedOn}');
  log('ONDAS: ${oceanForecast.waves}');
  log('-');

  // Retorna a previsão oceânica para a cidade informada para um período de até
  //6 dias.
  final oceanForecastDays = await OceanForecastCptec.oceanForecastCityDays(
    cityCode: 241,
    days: 6,
  );
  log('CIDADE: ${oceanForecastDays.city}');
  log('ESTADO: ${oceanForecastDays.state}');
  log('ATUALIZADO EM: ${oceanForecastDays.updatedOn}');
  log('ONDAS: ${oceanForecastDays.waves}');
  log('-');

  // Retorna estado e lista de cidades por DDD.
  final statesAndCities = await Ddd.stateAndCities(ddd: 11);
  log('ESTADO: ${statesAndCities.state}');
  log('CIDADES: ${statesAndCities.cities}');
  log('-');

  // Lista os feriados nacionais de determinado ano.
  // Calcula os feriados móveis baseados na Páscoa e adiciona os feriados fixos.
  final holidays = await Holiday.listHolidays(year: 2023);
  for (final holiday in holidays) {
    log('DATA: ${holiday.date}');
    log('NOME: ${holiday.name}');
    log('TIPO: ${holiday.type}');
    log('-');
  }

  // Lista as marcas de veículos referente ao tipo de veículo.
  // Os tipos suportados são caminhoes, carros e motos. Quando o tipo não é
  // específicado, são buscadas as marcas de todos os tipos de veículos
  final brands = await BrandFipe.listBrands(vehicleType: 'caminhoes');
  for (final brand in brands) {
    log('NOME: ${brand.name}');
    log('VALOR: ${brand.value}');
    log('-');
  }

  // Lista as tabelas de referência existentes.
  final tables = await TableFipe.listTables();
  for (final table in tables) {
    log(table.code.toString());
    log(table.mounth.toString());
    log('-');
  }

  // Consulta o preço do veículo segundo a tabela fipe.
  final vehicles = await VehicleFipe.searchPrice(fipeCode: '0012637');
  for (final vehicle in vehicles) {
    log('${vehicle.value}');
    log('${vehicle.brand}');
    log('${vehicle.model}');
    log('${vehicle.modelYear}');
    log('${vehicle.fuel}');
    log('${vehicle.fipeCode}');
    log('${vehicle.referenceMonth}');
    log('${vehicle.typeVehicle}');
    log('${vehicle.acronymFuel}');
    log('${vehicle.dateConsultation}');
    log('-');
  }

  // Retorna os municípios da unidade federativa.
  // Requer a sigla da unidade federativa, exemplo: SP, RJ.
  final citiesIbge = await CityIbge.listCities(uf: 'SP');
  for (final city in citiesIbge) {
    log('NOME: ${city.cityName}');
    log('CÓDIGO IBGE: ${city.ibgeCode}');
    log('-');
  }

  // Retorna informações de todos estados do Brasil.
  final states = await StateIbge.listStates();
  for (final state in states) {
    log('ID: ${state.id}');
    log('NOME: ${state.name}');
    log('REGIÃO: ${state.region}');
    log('SIGLA: ${state.acronym}');
    log('-');
  }

  // Busca as informações de um estado a partir da sigla ou código.
  final state = await StateIbge.searchState(codeOrUf: 'RJ');
  log('ID: ${state.id}');
  log('NOME: ${state.name}');
  log('REGIÃO: ${state.region}');
  log('SIGLA: ${state.acronym}');
  log('-');

  // Avalia o status de um dominio .br.
  final domain = await Domain.searchDomain(domain: 'brasilapi.com.br');
  log('CÓDIGO DE STATUS: ${domain.statusCode}');
  log('STATUS: ${domain.status}');
  log('FQDN: ${domain.fqdn}');
  log('SUGESTÕES: ${domain.suggestions}');
  log('HOSTS: ${domain.hosts}');
  log('STATUS DO DOMÍNIO: ${domain.publicationStatus}');
  log('EXPIRAÇÃO: ${domain.expiresAt}');
  log('MOTIVOS: ${domain.reasons}');
  log('-');

  // Retorna informações de todos os participantes do PIX no dia atual ou
  // anterior.
  final pixParticipants = await Pix.listPixParticipants();
  for (final participant in pixParticipants) {
    log('ISPB: ${participant.ispb}');
    log('NOME: ${participant.name}');
    log('NOME ENCURTADO: ${participant.shortName}');
    log('MODO DE PARTICIPAÇÃO: ${participant.participationMode}');
    log('TIPO DE PARTICIPAÇÃO: ${participant.participationType}');
    log('DATA INÍCIO DE OPERAÇÃO: ${participant.startOperation}');
    log('-');
  }

  // Informações sobre o livro a partir do ISBN.
  final book = await Book.searchBook(isbn: '9788545702870');
  log('ISBN: ${book.isbn}');
  log('TÍTULO: ${book.title}');
  log('SUBTÍTULO: ${book.subtitle}');
  log('AUTORES:${book.authors}');
  log('EDITORA: ${book.publisher}');
  log('SINOPSE: ${book.synopsis}');
  log('DIMENSÕES: ${book.dimensions}');
  log('ANO: ${book.year}');
  log('FORMATO: ${book.format}');
  log('QUANTIDADE DE PÁGINAS: ${book.pageCount}');
  log('ASSUNTOS: ${book.subjects}');
  log('LOCALIZAÇÃO: ${book.location}');
  log('PREÇO DE TABELA: ${book.retailPrice}');
  log('URL DA CAPA: ${book.coverUrl}');
  log('PROVEDOR: ${book.provider}');
  log('-');

  // Retorna informações de todos os NCMs.
  final allNcms = await Ncm.allNcm();
  for (var i = 0; i < 5; i++) {
    log('CÓDIGO NCM: ${allNcms[i].code}');
    log('DESCRIÇÃO: ${allNcms[i].desc}');
    log('DATA DE INICIO: ${allNcms[i].startDate}');
    log('DATA DE FIM: ${allNcms[i].endDate}');
    log('TIPO DE ATO: ${allNcms[i].actType}');
    log('NÚMERO DO ATO: ${allNcms[i].actNumber}');
    log('ANO: ${allNcms[i].year}');
    log('-');
  }

  // Pesquisa por NCMs a partir de um código ou descrição.
  final ncms = await Ncm.searchNcms(code: '33051000');
  for (final ncm in ncms) {
    log('CÓDIGO NCM: ${ncm.code}');
    log('DESCRIÇÃO: ${ncm.desc}');
    log('DATA DE INICIO: ${ncm.startDate}');
    log('DATA DE FIM: ${ncm.endDate}');
    log('TIPO DE ATO: ${ncm.actType}');
    log('NÚMERO DO ATO: ${ncm.actNumber}');
    log('ANO: ${ncm.year}');
    log('-');
  }

  // Busca as informações de um NCM a partir de um código.
  final ncm = await Ncm.searchNcm(code: '33051000');
  log('CÓDIGO NCM: ${ncm.code}');
  log('DESCRIÇÃO: ${ncm.desc}');
  log('DATA DE INICIO: ${ncm.startDate}');
  log('DATA DE FIM: ${ncm.endDate}');
  log('TIPO DE ATO: ${ncm.actType}');
  log('NÚMERO DO ATO: ${ncm.actNumber}');
  log('ANO: ${ncm.year}');
  log('-');

  // Retorna as taxas de juros e alguns índices oficiais do Brasil.
  final allTax = await Tax.allTax();
  for (final tax in allTax) {
    log('NOME: ${tax.name}');
    log('VALOR: ${tax.value}');
    log('-');
  }

  // Busca as informações de uma taxa a partir do seu nome/sigla.
  final tax = await Tax.searchTax(acronym: 'CDI');
  log('NOME: ${tax.name}');
  log('VALOR: ${tax.value}');
  log('-');
}
