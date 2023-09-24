Quando('entro no iframe e preencho os campos') do
    visit 'mudancadefoco/iframe'

    within_frame('id_do_iframe') do
        #ações dentro do iframe
        fill_in(id: 'first_name', with: 'Andriani')
        fill_in(id: 'last_name', with: 'Carvalho')
        sleep(5)
    end
end
  
Quando('entro no modal e verifico o texto') do
    visit 'mudancadefoco/modal'
    find('a[href="#modal1"]').click

    within("#modal1")do
        texto = find('h4')
        expect(texto.text).to eq 'Modal Teste'
        find('.modal-close').click
        sleep(4)
    end
end
  