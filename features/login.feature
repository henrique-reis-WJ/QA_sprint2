#language:pt

Funcionalidade: Login

    Cenario: Senha Inválida
        Dado que eu acesso a pagina inicial    
        Quando preencho meus dados "ronias_cost@example.com" e "roni_cost3ax@example.com"
        Então devo ler a seguinte mensagem "The account sign-in was incorrect or your account is disabled temporarily. Please wait and try again later."
    
    Cenario: Usuário Cadastrado

        Dado que eu acesso a pagina inicial    
        Quando preencho meus dados "roni_cost@example.com" e "roni_cost3@example.com"
        Então devo ler a seguinte mensagem "Default welcome msg"