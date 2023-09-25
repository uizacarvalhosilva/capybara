Quando('eu entro executo um script') do
    visit'outros/scroll'
    #executa o script mas não exibe/retorna 
    page.execute_script("window.scrollBy(0,1500)")
    
    #executar um script passando uma ação 
        @result = page.evaluate_script('4 + 4');
        puts @result
    sleep(5)
end