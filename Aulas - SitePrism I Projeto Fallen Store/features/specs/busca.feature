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
        | gear       |
        | wear       |
        | acessórios |
