Dado("que eu acesso a pagina inicial") do
    visit 'https://magento.nublue.co.uk/'
  end

  Dado("que quero fazer Login") do
    click_link 'Sign In'
  end

  Quando("preencho meus dados {string} e {string}") do |email, senha|
    @email = email
    find('#email').set email
    find('#pass').set senha
    click_button 'Sign In'
    sleep 5  
  end

   Então("devo ler a seguinte mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem
  end

  Dado("que escolhi o produto") do
    find_by_id('ui-id-4').hover
    sleep 1
    find('#ui-id-16').hover
    sleep 1
    find('#ui-id-20').click
    sleep 2
    click_link('Helios EverCool™ Tee')
  end
  
  Quando("adiciono ao carrinho") do
    find('#option-label-size-144-item-168').click
    find('#option-label-color-93-item-49').click
    click_button 'Add to Cart'
    sleep 5
  end
  
  Então("devo ler a mensagem {string}") do |mensagem_compra|
    expect(page).to have_content mensagem_compra
  end
