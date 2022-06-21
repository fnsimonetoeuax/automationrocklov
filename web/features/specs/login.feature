#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    @login_artia
    Cenario: Login de usuário

        Dado que eu acesso a página principal
        Quando submeto minhas credenciais com "papito@yahoo.com" e "pwd123"
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentar logar

        Dado que eu acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input          | senha_input | mensagem_output                  |
            | papito@yahoo.com     | abc123      | Usuário e/ou senha inválidos.    |
            | fn@404.com           | pwd123      | Usuário e/ou senha inválidos.    |
            | felipe&aol.com       | 4290        | Oops. Informe um email válido!   |
            |                      | 4290        | Oops. Informe um email válido!   |
            | fnsimoneto@gmail.com |             | Oops. Informe sua senha secreta! |