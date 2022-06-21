#language: pt

Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no RockLov
    Para que eu possa disponibilizá-los para locação

    @cadastro
    Cenario: Fazer cadastro

        Dado que eu acesso a pagina de cadastro
        Quando eu submeto o seguinte formulário de cadastro:
            | nome            | email                | senha |
            | Felipe Simoneto | fnsimoneto@gmail.com | 4290  |
        Então sou redirecionado para o Dashboard

    Esquema do Cenário: Tentativa de Cadastro
        Dado que eu acesso a pagina de cadastro
        Quando eu submeto o seguinte formulário de cadastro:
            | nome         | email         | senha         |
            | <nome_input> | <email_input> | <senha_input> |
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | nome_input      | email_input          | senha_input | mensagem_output                  |
            |                 | fnsimoneto@gmail.com | abc123      | Oops. Informe seu nome completo! |
            | Felipe Simoneto |                      | pwd123      | Oops. Informe um email válido!   |
            | Felipe Simoneto | fnsimoneto&gmail.com | pwd123      | Oops. Informe um email válido!   |
            | Felipe Simoneto | fnsimoneto@gmail.com |             | Oops. Informe sua senha secreta! |