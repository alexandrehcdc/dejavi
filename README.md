# De-já vi

App para facilitar o gerenciamento dos seus filmes favoritos, que você tenha assistido ou pretende assistir. Construído em Swift 2 com a IDE Xcode v7.2.1, utilizando a API [OMDb](http://www.omdbapi.com/).

## Instruções e pré-requisitos

A API do OMDb recentemente tornou-se privada, portanto, a **key** de autenticação de requisição presente neste projeto pode vir a se tornar inválida no futuro.

É necessário ter o [CocoaPods](https://cocoapods.org/) instalado para utilização das bibliotecas utilizadas nesse projeto, seguido dos passos a seguir:

```bash
sudo gem install cocoapods
git clone https://github.com/alexandrehcdc/dejavi.git
cd dejavi
pod install
```

## Ferramentas e bibliotecas utilizadas
* [Alamofire](https://github.com/Alamofire/Alamofire): Biblioteca para requisições HTTP de forma estruturada
* [Realm](https://github.com/realm/realm-cocoa): Banco de dados embutido
* [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON): Biblioteca para lidar com objetos JSON e facilitar a persistência de dados
* [SwiftLint](https://github.com/realm/SwiftLint): Ferramenta para reforçar as boas práticas de código limpo baseado em padrões do github
