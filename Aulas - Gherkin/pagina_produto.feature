#language: pt

Funcionalidade: Página do Produto
    Como usuário da plataforma Fallen Store
    Desejo personalizar informações de um certo produto
    Para adquirir o produto com a melhor experiência possível

    Contexto: Usuário localizado ná página de um produto
        Dado que o usuário esteja localizado ná página de um certo produto

    Cenário: Troca de cor do produto
        Quando o usuário alterar a cor do produto
        Então deverá ser exibido o produto na respectiva cor escolhida

    Cenário: Troca de tamanho do produto
        Quando o usuário alterar o tamanho do produto
        Então deverá ser exibido o tamanho escolhido na página do produto

    Cenário: Adicionar produto ao carrinho
        Quando o usuário adicionar o produto ao carrinho
        Então o produto deverá ser adicionado ao carrinho
    
    Esquema do Cenário: Cálculo do frete de entrega do produto 
        Quando o usuário digitar o "<cep>"
        Então deverá ser exibido "<mensagem>"

        Exemplos:
        | cep       | mensagem                                 |
        | 11111-111 | Transportadora, prazo e preço de entrega |
        |           | Por favor, informe um CEP válido         |