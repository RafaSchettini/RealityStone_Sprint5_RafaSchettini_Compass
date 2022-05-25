#language: pt

Funcionalidade: Google

    Cenário: Carregar a página inicial do Google
        Dado que o usuário acesse a página inicial
        Então logo do Google deverá ser exibida

    Cenário: Buscar por Compass
        Dado que o usuário acesse a página inicial
        Quando buscar por "Compass"
        Então resultados deverão ser exibidos ao usuário