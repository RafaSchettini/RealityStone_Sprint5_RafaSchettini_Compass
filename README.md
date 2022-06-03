<p align="center">
 <img width="275px" src="https://compass.uol/logo.svg" align="center" alt="Compass.UOL LOGO" />
 <h2 align="center">RealityStone | Sprint 5 @ Compass.UOL</h2>
 <p align="center"></p>
</p>
  <p align="center">
      <img alt="Last commits" src="https://img.shields.io/github/last-commit/rafaschettini/RealityStone_Sprint4_RafaSchettini_Compass/main"/>
      <img alt="Commits activity" src="https://img.shields.io/github/commit-activity/w/rafaschettini/RealityStone_Sprint4_RafaSchettini_Compass/main"/>
  </p>

## Conteúdos:
* [Gherkin](#gherkin)
* [Capybara](#capybara)
* [SitePrism](#siteprism)
* [Testes c/ Capybara & Cucumber](#capybara-e-cucumber)
* [Projeto Fallen Store](#projeto-fallen-store)
* [Dependências](#dependências)
* [Desenvolvedor(es)](#desenvolvedor)


<div align="left">

## Gherkin
 
- Funcionalidades e Cenários com Gherkin

```gherkin
#language: pt

@search
Funcionalidade: Busca
    Como um usuário da plataforma Fallen Store
    Desejo realizar a busca por diversos produtos
    Para visualizar mais informações de um certo produto

    Contexto: Usuário localizado na página inicial
        Dado que o usuário esteja na página inicial
    
    @search_products
    Cenário: Busca por produtos na plataforma
        Quando realizar a busca por um produto
        Então deverão ser retornados ao usuário resultados de acordo com a busca
    
    @search_for_available_products
    Esquema do Cenário: Busca por produtos disponíveis na plataforma
        Quando realizar a busca pelo "<produto>"
        Então deverão ser retornados ao usuário resultados de acordo com a busca

        Exemplos:
        | produto    |
        | Gear       |
        | Wear       |
        | Acessórios |

```

## Capybara
- Mapeamento de elementos HTML com Capybara
```ruby
class GoogleHome < BasePage

    def search_for(query)
        find("input[name='q']").set query
        # find(".gNO89b").click // Procura botão por nome da classe CSS
        click_button "Pesquisa Google"
    end

end
``` 
## SitePrism

- Mapeamento de elementos HTML com SitePrism
 
```ruby
class Home < SitePrism::Page
    
  set_url('/')

  element :logo, 'img[class="lnXdpd"]'

end
``` 

## Capybara e Cucumber

- Cenários de Teste Gherkin
 
```gherkin
#language: pt

Funcionalidade: Google

    Cenário: Carregar a página inicial do Google
        Dado que o usuário acesse a página inicial
        Então logo do Google deverá ser exibida

    Cenário: Buscar por Compass
        Dado que o usuário acesse a página inicial
        Quando buscar por "Compass"
        Então resultados deverão ser exibidos ao usuário
``` 
 
- Como executar os testes: 
```bash
# Acessa diretório do projeto
cd "Aulas - Capybara & Cucumber"

# Executa os testes 
bundle exec cucumber
``` 
 
## Projeto Fallen Store
* Principais pontos abordados:
  - Page Objects com SitePrism
  - Massas de dados estáticas e dinâmicas
  - Diferentes tipos de reports da automação de testes

* Cenários de testes Gherkin:
 
```gherkin
#language: pt

@product_page
Funcionalidade: Página do Produto
    Como usuário da plataforma Fallen Store
    Desejo personalizar informações de um certo produto
    Para adquirir o produto com a melhor experiência possível

    Contexto: Usuário localizado ná página de um produto
        Dado que o usuário esteja localizado ná página de um certo produto

    @change_product_color
    Cenário: Troca de cor do produto
        Quando o usuário alterar a cor do produto
        Então deverá ser exibido o produto na respectiva opção escolhida

    @change_product_size
    Cenário: Troca de tamanho do produto
        Quando o usuário alterar a cor do produto
        E alterar o tamanho do produto
        Então deverá ser exibido o produto na respectiva opção escolhida

    @add_product_to_cart
    Cenário: Adicionar produto ao carrinho
        Quando o usuário alterar a cor do produto
        E alterar o tamanho do produto
        E adicionar o produto ao carrinho
        Então o produto deverá ser adicionado ao carrinho
    
    @calc_product_shipment_price
    Cenário: Cálculo do frete de entrega do produto 
        Quando o usuário digitar o "<cep>"
        Então deverá ser exibido informações de entrega
```
- Como executar os testes: 
```bash
# Acessa diretório do projeto
cd "Aulas - SitePrism I Projeto Fallen Store"

# Executa todos os testes
bundle exec cucumber
 
# Executa testes por tags
bundle exec cucumber -p default -t@"<tag>" # ex: -t@calc_product_shipment_price
```  
</div>
 
## Dependências
* Linguagens e/ou API's:
  - Ruby  

* Instalar gems do projeto:
 ```bash 
 # Acessa diretório do projeto
 cd "<pasta de um dos projetos>" # cd "ex: Aulas - SitePrism I Projeto Fallen Store"
 
 # Instala as gems
 bundle install
 ```
  

## Desenvolvedor

<a href="https://github.com/RafaSchettini"><img width="300" align="left" src="https://media.discordapp.net/attachments/647132376941461504/977023581206765598/My_project_1.png?width=566&height=559"></a>

- People call me Rafa! 🎙️
- I live in Recife, Brazil 📍
- I'm a Computer Science (CC) Student 💻
- Feel free to share your knowledge with me, I'm always open to learn new things ⚡

# 💬 You can find me here:
<p>
<a href="https://linkedin.com/in/rafael-schettini/"><img  alt="Rafa-LINKEDIN" height="40" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linkedin/linkedin-original.svg" /><a/>
<a href="mailto:rafaschettini902@gmail.com"><img  alt="Rafa-GMAIL" width="40" height="40" src="https://img.icons8.com/fluency/48/000000/gmail.png" /></a>
</p
