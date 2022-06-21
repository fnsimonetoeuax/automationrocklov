#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibilizalos para locação

    Contexto: Login
        * Login com "betao@yahoo.com" e "pwd123"

    @cadastro_anuncio
    Cenário: Novo equipo

        Dado que acesso o formulario de cadastro de anúncios
            E que eu tenho o seguinte equipamento:
            | thumb     | robot.png     |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ver esse item no meu Dashboard

    Esquema do Cenario: Tentativa de cadastro de anúncios

        Dado que acesso o formulario de cadastro de anúncios
            E que eu tenho o seguinte equipamento:
            | thumb     | <foto>      |
            | nome      | <nome>      |
            | categoria | <categoria> |
            | preco     | <preco>     |
        Quando submeto o cadastro desse item
        Então deve conter a mensagem de alerta: "<saida>"

        Exemplos:
            | foto             | nome              | categoria | preco | saida                                |
            |                  | Violao de Nylon   | Cordas    | 150   | Adicione uma foto no seu anúncio!    |
            | frameworks.jpeg  |                   | Outros    | 250   | Informe a descrição do anúncio!      |
            | frameworks 2.png | Microfone Shure   |           | 100   | Informe a categoria                  |
            | capybara 2.png   | Trompete Clássico | Outros    |       | Informe o valor da diária            |
            | gems.png         | Conga             | Outros    | abc   | O valor da diária deve ser numérico! |
            | gems.png         | Conga             | Outros    | 100a  | O valor da diária deve ser numérico! |