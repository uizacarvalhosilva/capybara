Quando('eu cadastro o usuário') do
    visit'users/new'
    fill_in(id: 'user_name', with: 'Uíza')
    find('#user_lastname').set('Silva')
    fill_in(id: 'user_email', with: 'silva@gmail.com')
    find('input[value="Criar"]').click
end
  
Então('verifico se o usuário foi cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eq 'Usuário Criado com sucesso'
end
  
Quando('edito um usuário') do
    sleep(5)
    find(".btn.waves-light.blue").click
end
Então('verifico se o usuário foi editado') do
    
end

