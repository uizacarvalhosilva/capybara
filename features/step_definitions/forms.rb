Quando("eu faço o cadastro") do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Uíza')
    find('#user_lastname').set('Carvalho')
    find('#user_email').send_keys('teste@carvalho.com')
    fill_in(id: 'user_address', with: 'Av. Brasil, 227 - Centro')
    fill_in(id: 'user_university', with: 'PUC - Minas')
    fill_in(id: 'user_profile', with: 'Analista QA')
    fill_in(id: 'user_gender', with: 'Feminino')
    fill_in(id: 'user_age', with: '26')
    find('input[value="Criar"]').click
    sleep(10)
  end
  
  Então('eu verifico se fui cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eq "Usuário Criado com sucesso"
  end