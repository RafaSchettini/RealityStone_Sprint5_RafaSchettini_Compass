#language: pt

@regression
@newsletter
Funcionalidade: Newsletter

    Contexto: Usuário localizado na página inicial
        Dado que o usuário esteja na página inicial

    @send_newsletter
    Cenário: Preencher dados do formulário da NewsLetter
        Quando o usuário informar seus dados no formulário
        Então deverá apresentar teste captcha