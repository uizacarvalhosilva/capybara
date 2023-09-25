Quando('eu entro em uma janela e verifico a mensagem') do
   visit'/mudancadefoco/janela'

   #janela reecebe uma janela que foi aberta pelo link
   janela = window_opened_by do
        click_link 'Clique aqui'
   end

    #muda de foco para a janela 
   within_window janela do
        expect(current_url).to eq 'http://localhost:3000/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

        janela.close
   end
   sleep(2)


#segunda opção
    click_link 'Clique aqui'

    #mudando para a última aba 
    switch_to_window windows.last

    expect(current_url).to eq 'http://localhost:3000/mudancadefoco/newwindow'
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

    windows.last.close
    sleep(2)


end
  
Quando('eu entro no alert e verifico faço a ação') do
   visit 'mudancadefoco/alert'
   find('button[onclick="jsAlert()"]').click
   sleep(3)
   page.accept_alert

   find('button[onclick="jsConfirm()"]').click
   sleep(3)
   #cancelar a ação do alert
   page.dismiss_confirm

   #aceitar o prompt e preencher 
   find('button[onclick="jsPrompt()"]').click
   page.accept_prompt(with: 'Uíza Carvalho')
   page.dismiss_prompt
   sleep(3)
   
end

