Dado("que eu acesso a pagina inicial") do
    visit 'https://magento.nublue.co.uk/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLm51Ymx1ZS5jby51ay8%2C/'
  end
  
  Quando("preencho meus dados {string} e {string}") do |email, senha|
    find('input[id=email]').set email
    find('input[id=pass]').set senha
    click_button 'Sign In'
    sleep 5
  end
  
  Então("meu login foi realizado") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("devo ler a seguinte mensagem {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end