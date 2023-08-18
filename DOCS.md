<div align="center">
  <img 
    src="https://raw.githubusercontent.com/BrasilAPI/BrasilAPI/main/public/brasilapi-logo-small.png" 
    alt="Brasil API Logo"
  />
</div>

##

Uma biblioteca em Dart para a API [Brasil API](https://brasilapi.com.br/), com todas suas funcionalidades. Para mais detalhes da API, consulte sua [documentação](https://brasilapi.com.br/docs).

Esse arquivo contém a documentação completa da biblioteca, com seus modelos e funções.

### Nova documentação: [https://www.pedrohaveloso.site/br_api_dart](https://www.pedrohaveloso.site/br_api_dart).

## Documentação

Recursos disponíveis:

- [BANKS](#banks)
- [CEP V1](#cep-v1)
- [CEP V2](#cep-v2)
- [CNPJ](#cnpj)
- [Corretoras](#corretoras)
- [CPTEC](#cptec)
- [DDD](#ddd)
- [Feriados Nacionais](#feriados-nacionais)
- [FIPE](#fipe)
- [IBGE](#ibge)
- [ISBN](#isbn)
- [NCM](#ncm)
- [PIX](#pix)
- [REGISTRO BR](#registro-br)
- [TAXAS](#taxas)

### BANKS

#### `class Bank` 
Informações sobre sistema bancário.

Informações disponíveis:
- `ispb`: IPSB do banco.
- `name`: Nome do banco.
- `code`: Código do banco.
- `fullName`: Nome completo do banco.

Funções disponíveis:

##### `Future<List<Bank>> allBankInformation`
- Retorna informações de todos os bancos do Brasil.

##### `Future<Bank> searchBankInformation ({required int bankCode})`
- Busca as informações de um banco a partir de um código.

### CEP V1

#### `class CepV1`
Informações referentes a CEPs (Versão 1).

Informações disponíveis:
- `cep`: CEP do local.
- `state`: Estado.
- `city`: Cidade.
- `neighborhood`: Bairro.
- `street`: Rua.
- `service`: Responsável pelo serviço local.

Funções disponíveis:

##### `Future<CepV1> searchCepV1 ({required int cep})`
- Busca por CEP com múltiplos providers de fallback (Versão 01).

### CEP V2

#### `class CepV2`
Informações referentes a CEPs (Versão 2).

Informações disponíveis:
- `cep`: CEP do local.
- `state`: Estado.
- `city`: Cidade.
- `neighborhood`: Bairro.
- `street`: Rua.
- `service`: Responsável pelo serviço local.
- `location`: Localização.

Funções disponíveis:

##### `Future<CepV2> searchCepV2 ({required int cep})`
- Busca por CEP com múltiplos providers de fallback (Versão 02).

### CNPJ

#### `class Company`
Informações de empresas por CNPJ.

Informações disponíveis:
- `cnpj`: CNPJ da empresa.
- `parentSubsidiaryIdentifier`: Código do identificador matriz/filial. `1` – MATRIZ `2` – FILIAL.
- `descriptionSubsidiary`: Descrição matriz/filial.
- `socialReason`: Razão social da empresa. 
- `tradingName`: Nome fantasia da empresa.
- `cadastralSituation`: Situação cadastral da empresa: `01` – NULA `02` – ATIVA `03` – SUSPENSA `04` – INAPTA `08` – BAIXADO.
- `descriptionCadastralSituation`: Descrição situação cadastral. 
- `dateCadastralSituation`: Data da situação cadastral. 
- `reasonCadastralSituation`: Código do motivo da situação cadastral. 
- `nameCityExterior`: Nome da cidade no exterior. 
- `juridicalNatureCode`: Código da natureza jurídica. 
- `dateStartActivity`: Data de início das atividades. 
- `cnaeFiscal`: CNAE fiscal. 
- `cnaeFiscalDesc`: Descrição do CNAE fiscal. 
- `descStreetType`: Descrição do tipo de logradouro. 
- `street`: Logradouro da empresa. 
- `phone`: Número de contato da empresa. 
- `complement`: Complemento. 
- `neighborhood`: Bairro da empresa. 
- `cep`: CEP da empresa. 
- `uf`: UF da empresa. 
- `cityCode`: Código do município da empresa. 
- `city`: Município da empresa. 
- `dddPhone1`: DDD do telefone 1. 
- `dddPhone2`: DDD do telefone 2. 
- `dddFax`: DDD do FAX. 
- `responsibleQualification`: Qualificação do responsável.  
- `capitalSocial`: Capital social da empresa. 
- `companySize`: Porte da empresa. 
- `descCompanySize`: Descrição do porte. 
- `simpleOption`: Opção pelo simples. 
- `simpleOptionDate`: Data da opção pelo simples.  
- `dateExclusionSimples`: Data da exclusão do simples.  
- `optionMei`: Opção pelo MEI. 
- `specialSituation`: Situação especial. 
- `dateSpecialSituation`: Data da situação especial. 
- `secondaryCnaes`: CNAEs secundários.
- `qsa`: QSA.

Funções disponíveis:

##### `Future<Company> searchCnpj ({required String cnpj})`
- Busca por CNPJ na API Minha Receita.

### Corretoras

#### `class Brokerage`
Informações referentes as corretoras ativas listadas na CVM.

Informações disponíveis:
- `cnpj`: CNPJ da corretora.
- `socialName`: Nome social da corretora.
- `commercialName`: Nome comercial da corretora.
- `neighborhood`: Bairro registrado da corretora.
- `cep`: CEP registrado da corretora.
- `cvmCode`: Código CVM da corretora.
- `complement`: Complementos.
- `dateCurrentSituation`: Data de início situação da corretora.
- `dateNetWorth`: Data de declaração do patrimônio líquido.
- `dateRegistration`: Data de registro da corretora.
- `email`: E-mail da corretora.
- `street`: Logradouro da corretora.
- `city`: Município da corretora.
- `country`: País da corretora.
- `phone`: Telefone de contato da corretora.
- `uf`: UF da corretora.
- `valueNetWorth`: Valor do patrimônio líquido da corretora.

Funções disponíveis:

##### `Future<List<Brokerage>> allBrokerageInformation`
- Retorna as corretoras nos arquivos da CVM.

##### `Future<Brokerage> searchBrokerageInformation ({required String cnpj})`
- Busca por corretoras através do CNPJ nos arquivos da CVM.

### CPTEC

#### `class CityCptec`
Cidades pelos dados provenientes da CPTEC. Fonte oficial: CPTEC/INPE.

Informações disponíveis:
- `name`: Nome da cidade. 
- `state`: Unidade federativa da cidade. 
- `id`: ID (CPTEC) da cidade. 

Funções disponíveis:

##### `Future<List<CityCptec>> listAllLocations`
- Retorna listagem com todas as cidades junto a seus respectivos códigos presentes nos serviços da CPTEC. O Código destas cidades será utilizado para os serviços de meteorologia e a ondas (previsão oceânica) fornecido pelo centro. Leve em consideração que o WebService do CPTEC as vezes é instável, então se não encontrar uma determinada cidade na listagem completa, tente buscando por parte de seu nome no endpoint de busca.

##### `Future<List<CityCptec>> searchLocations ({required String cityName})`
- Retorna listagem com todas as cidades correspondentes ao termo pesquisado junto a seus respectivos códigos presentes nos serviços da CPTEC. O Código destas cidades será utilizado para os serviços de meteorologia e a ondas (previsão oceânica) fornecido pelo centro.

#### `class WeatherForecastCptec`
Previsão metereológica nas cidades pelos dados provenientes da CPTEC. Fonte oficial: CPTEC/INPE.

Informações disponíveis:
- `city`: Cidade.
- `state`: Unidade federativa.
- `updatedOn`: Data de última atualização em formato ISO.
- `climate`: Lista com condições climáticas dia a dia.

Funções disponíveis:

##### `Future<WeatherForecastCptec> weatherForecastCity ({required int cityCode})`
- Retorna a previsão meteorológica para 1 dia na cidade informada.

##### `Future<WeatherForecastCptec> weatherForecastCityDays ({required int cityCode, required int days})`
- Retorna a previsão meteorológica para a cidade informada para um período de 1 até 6 dias. Devido a inconsistências encontradas nos retornos da CPTEC, a API só consegue retornar com precisão o período máximo de 6 dias.

#### `class WeatherConditionsCptec`
Condições metereológicas atuais nas capitais ou aeroportos pelos dados provenientes da CPTEC. Fonte oficial: CPTEC/INPE.

Informações disponíveis:
- `icaoCode`: Código ICAO do aeroporto.
- `updatedOn`: Data de última atualização em formato ISO.
- `atmosphericPressure`: Pressão atmosférica medida na estação meteorológica do aeroporto expressa em hPa (Hectopascal).
- `visibility`: Condição atual de visibilidade em metros.
- `wind`: Intensidade do vendo em km/h.
- `windDirection`: Direção do vento em graus (de 0° a 360°).
- `humidity`: Umidade relativa do ar em porcentagem.
- `condition`: Código da condição meteorológica
- `conditionDesc`: Texto descritivo para a condição meteorológica.
- `temp`: Temperatura (em graus celsius).

Funções disponíveis:

##### `Future<List<WeatherConditionsCptec>> capitalConditions`
- Retorna condições meteorológicas atuais nas capitais do país, com base nas estações de solo de seu aeroporto.

##### `Future<WeatherConditionsCptec> airportConditions ({required String icaoCode})`
- Retorna condições meteorológicas atuais no aeroporto solicitado. Este endpoint utiliza o código ICAO (4 dígitos) do aeroporto.

#### `class OceanForecastCptec`
Previsão oceânica nas cidades pelos dados provenientes da CPTEC. Fonte oficial: CPTEC/INPE.

Informações disponíveis:
- `city`: Cidade.
- `state`: Unidade federativa.
- `updatedOn`: Data de última atualização em formato ISO.
- `waves`: Lista com condições climáticas dia a dia.

Funções disponíveis:

##### `Future<OceanForecastCptec> oceanForecastCity ({required int cityCode})`
- Retorna a previsão oceânica para a cidade informada para 1 dia.

##### `Future<OceanForecastCptec> oceanForecastCityDays ({required int cityCode, required int days})`
- Retorna a previsão oceânica para a cidade informada para um período de até 6 dias.

### DDD

#### `class Ddd`
Informações relacionadas a DDDs.

Informações disponíveis:
- `state`: Estado do DDD.
- `cities`: Cidades do DDD.

Funções disponíveis:

##### `Future<Ddd> stateAndCities ({required int ddd})`
- Retorna estado e lista de cidades por DDD.

### Feriados Nacionais

#### `class Holiday`
Informações sobre feriados nacionais.

Informações disponíveis:
- `date`: Data do feriado.
- `type`: Tipo do feriado. Exemplo: `national`
- `name`: Nome do feriado.

Funções disponíveis:

##### `Future<List<Holiday>> listHolidays ({required int year})`
- Lista os feriados nacionais de determinado ano. Calcula os feriados móveis baseados na Páscoa e adiciona os feriados fixos.

### FIPE

#### `class BrandFipe`
Informações sobre marcas de veículos fornecido pela FIPE (Fundação Instituto de Pesquisas Econômicas).

Informações disponíveis:
- `name`: Nome da marca.
- `value`: Valor.

Funções disponíveis:

##### `Future<List<BrandFipe>> listBrands ({required String vehicleType})`
- Lista as marcas de veículos referente ao tipo de veículo. Os tipos suportados são `caminhoes`, `carros` e `motos`. Quando o tipo não é específicado, são buscadas as marcas de todos os tipos de veículos

#### `class TableFipe`
Tabelas de referência existentes fornecidas pela FIPE (Fundação Instituto de Pesquisas Econômicas).

Informações disponíveis:
- `code`: Nome do veículo.
- `mounth`: Mês.

Funções disponíveis:

##### `Future<List<TableFipe>> listTables`
- Lista as tabelas de referência existentes.

#### `class VehicleFipe`
Informações sobre marcas de veículos fornecido pela FIPE (Fundação Instituto de Pesquisas Econômicas).

Informações disponíveis:
- `value`: Valor do veículo.
- `brand`: Marca do veículo
- `model`: Modelo.
- `modelYear`: Ano do modelo.
- `fuel`: Combustível usado.
- `fipeCode`: Código FIPE.
- `referenceMonth`: Mês de referência.
- `typeVehicle`: Tipo do veículo.
- `acronymFuel`: Sigla do combustível.
- `dateConsultation`: Data de consulta.

Funções disponíveis:

##### `Future<List<VehicleFipe>> searchPrice ({required String fipeCode})`
- Consulta o preço do veículo segundo a tabela fipe.

### IBGE

#### `class CityIbge`
Cidades provenientes do IBGE.

Informações disponíveis:
- `cityName`: Nome da cidade.
- `ibgeCode`: Código IBGE da cidade.

Funções disponíveis:

##### `Future<List<CityIbge>> listCities ({required String uf})`
- Retorna os municípios da unidade federativa. Requer a sigla da unidade federativa, exemplo: `SP`, `RJ`.

#### `class StateIbge`
Estados provenientes do IBGE.

Informações disponíveis:
- `id`: ID do estado.
- `acronym`: Sigla do estado.
- `name`: Nome do estado.
- `region`: Dados da região do estado.

Funções disponíveis:

##### `Future<List<StateIbge>> listStates`
- Retorna informações de todos estados do Brasil.

##### `Future<StateIbge> searchState ({required String codeOrUf})`
- Busca as informações de um estado a partir da sigla ou código.

### ISBN

#### `class Book`
Informações sobre livros publicados no Brasil (prefixo `65` ou `85`) a partir do ISBN, um sistema internacional de identificação de livros que utiliza números para classificá-los por título, autor, país, editora e edição.

Informações disponíveis:
- `isbn`: Código ISBN.
- `title`: Título do livro.
- `subtitle`: Subtítulo do livro.
- `authors`: Autores do livro.
- `publisher`: Editora do livro.
- `synopsis`: Sinopse do livro.
- `dimensions`: Dimensões (tamanho) do livro.
- `year`: Ano de publicação.
- `format`: Formato do livro. Enum: `"PHYSICAL"` `"DIGITAL"`.
- `pageCount`: Quantidade de páginas.
- `subjects`: Temas/assuntos do livro.
- `location`: Localização.
- `retailPrice`: Preço de tabela.
- `coverUrl`: URL da capa.
- `provider`: Provedor. Enum: `"cbl"` `"mercado-editorial"` `"open-library"` `"google-books"`.

Funções disponíveis:

##### `Future<Book> searchBook ({required String isbn})`
- Informações sobre o livro a partir do ISBN.

### NCM

#### `class Ncm`
Informações referentes a NCMs.

Informações disponíveis:
- `code`: Código do NCM.
- `desc`: Descrição do NCM.
- `startDate`: Data de início.
- `endDate`: Data de fim.
- `actType`: Tipo de ato.
- `actNumber`: Número do ato.
- `year`: Ano.

Funções disponíveis:

##### `Future<List<Ncm>> allNcm`
- Retorna informações de todos os NCMs.

##### `Future<List<Ncm>> searchNcms ({required String code,})`
- Pesquisa por NCMs a partir de um código ou descrição.

##### `Future<Ncm> searchNcm ({required String code})`
- Busca as informações de um NCM a partir de um código.

### PIX

#### `class Pix`
Informações referentes ao PIX.

Informações disponíveis:
- `ispb`: ISPB
- `name`: Nome do participante.
- `shortName`: Nome reduzido do participante.
- `participationMode`: Modalidade de participação.
- `participationType`: Tipo de participante.
- `startOperation`: Date de inicio da operação.

Funções disponíveis:

##### `Future<List<Pix>> listPixParticipants`
- Retorna informações de todos os participantes do PIX no dia atual ou anterior.

### REGISTRO BR

#### `class Domain`
Avalia um dominio no registro.br.

Informações disponíveis:
- `statusCode`: Código de status. Disponíveis: - 0 "domínio disponível." - 1 "disponível com tickets concorrentes." - 2 "já registrado." - 3 "indisponível." - 4 "inválido." - 5 "aguardando processo de liberação." - 6 "disponível no processo de liberação em andamento." - 7 "disponível no processo de liberação em andamento com tickets concorrentes." - 8 "erro." - 9 "domínio em processo de liberação competitivo." - 10 "desconhecido."
- `status`: Status. Disponíveis: - AVAILABLE - AVAILABLE_WITH_TICKET - REGISTERED - UNAVAILABLE - INVALID_QUERY - RELEASE_WAITING - RELEASE_IN_PROGRESS - RELEASE_IN_PROGRESS_WITH_TICKETS - ERROR - DOMAIN_PROCESS_RELEASE - UNKNOW
- `fqdn`: Domínio pesquisado.
- `suggestions`: Caso o dominio esteja indisponivel, o registro poderá sugerir extensões disponíveis para o registro.
- `hosts`: CDN's de um domínio publicado.
- `publicationStatus`: Status de um dominio registrado.
- `expiresAt`: Vencimento do domínio.
- `reasons`: Justificativas da indisponibilidade de registro ainda não registrado.

Funções disponíveis:

##### `Future<Domain> searchDomain ({required String domain})`
- Avalia o status de um dominio .br.

### TAXAS

#### `class Tax`
Taxas de juros e índices oficiais.

Informações disponíveis:
- `name`: Nome da taxa ou índice.
- `value`: Valor da taxa ou índice.

Funções disponíveis:

##### `Future<List<Tax>> allTax`
- Retorna as taxas de juros e alguns índices oficiais do Brasil.

##### `Future<Tax> searchTax ({required String acronym})`
- Busca as informações de uma taxa a partir do seu nome/sigla.


### [Voltar ao início](#documentação)