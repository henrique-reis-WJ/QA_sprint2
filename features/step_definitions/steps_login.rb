Dado("que eu acesso a pagina inicial") do
    visit 'https://magento.nublue.co.uk/'
    click_link 'Sign In'
  end
  
  Quando("preencho meus dados {string} e {string}") do |email, senha|
    @email = email
    find('input[id=email]').set email
    find('input[id=pass]').set senha
    click_button 'Sign In'
  end

   Então("devo ler a seguinte mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem    
  end