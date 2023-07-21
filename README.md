<div align="center">
  <img 
    src="https://raw.githubusercontent.com/BrasilAPI/BrasilAPI/main/public/brasilapi-logo-small.png" 
    alt="Brasil API Logo"
  />
</div>

##

Uma biblioteca em Dart para a API [Brasil API](https://brasilapi.com.br/), com todas suas funcionalidades.

Já ouviu falar no [Brasil API](https://brasilapi.com.br/)?

> O [Brasil API](https://brasilapi.com.br/) “é um projeto experimental que tem como objetivo centralizar e disponibilizar endpoints modernos com baixíssima latência independente de sua fonte”.

Antes de usar essa biblioteca, leia os [termos de uso](https://brasilapi.com.br/#termos-de-uso) do Brasil API e lembre-se: jamais abuse do serviço.

## Instalando

Dentro do seu projeto Dart, abra o terminal e digite:

    $ dart pub add br_api

Ou, no caso de um projeto em Flutter:

    $ flutter pub add br_api

## Usando a biblioteca

A biblioteca conta com todas as funcionalidades disponíveis atualmente na API, para saber mais veja o exemplo de uso na aba [example](https://pub.dev/packages/br_api/example), ou, para informações mais detalhadas, leia a documentação completa: TODO

Uma consulta simples de CEP:

```dart
void main() async {
  // Busca por CEP (versão 2).
  final cep = await CepV2.searchCepV2(cep: 70150900);
  print('Cidade: ${cep.city}');
  print('Serviço: ${cep.service}');
  print('Bairro: ${cep.neighborhood}');
  print('Estado: ${cep.state}');
  print('Rua: ${cep.street}');
  print('Localização: ${cep.location}');
}
```

Os modelos da biblioteca possuem todas as informações especificadas na [documentação](https://brasilapi.com.br/docs) da Brasil API.

## Como contribuir

Achou legal a biblioteca e quer contribuir? 

Você é completamente bem-vindo!

Só entrar no [repositório do GitHub](https://github.com/PedroHAVeloso/br_api_dart) e criar um fork, clone e fique a vontade para contribuir com o código. Mas, antes de dar um pull request, lembre-se que suas features devem estar bem documentadas e com testes, hein!

## Erros e bugs

A biblioteca ainda tem erros pendentes a correção, portanto, caso ocorra algum com você, relate no GitHub.