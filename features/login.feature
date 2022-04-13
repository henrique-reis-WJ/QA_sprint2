#language:pt

Funcionalidade: Login

    Cenario: Usuário Cadastrado

        Dado que eu acesso a pagina inicial    
        Quando eu faço login "roni_cost@example.com" e "roni_cost3@example.com"
        Então meu login foi realizado
        E devo ler a seguinte mensagem "Olá, Henrique"