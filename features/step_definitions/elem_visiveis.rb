Quando('clico no botao') do
    visit "/buscaelementos/botoes"
    find('#teste').click
  end
  
Então('verifico se o texto apareceu na tela com sucesso') do
  @texto = find('#div1')
  expect(@texto.text).to eq 'Você Clicou no Botão!'

  #usando o assert
  page.assert_text("Você Clicou no Botão!")
    
  #usando o has
  page.has_text?("Você Clicou no Botão!") 

  #usando o have
  have_text("Você Clicou no Botão!")   


  
  sleep(5)
  find('#teste').click
  page.has_no_text?("Você Clicou no Botão!") 
  page.assert_no_text("Você Clicou no Botão!")
end


