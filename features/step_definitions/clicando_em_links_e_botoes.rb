Quando('clico em botoes') do
    visit '/'
    click_on('Começar Automação Web') #é a mesma coisa que o click_link_or_button
    visit 'buscaelementos/botoes'
    click_button(class: 'btn waves-light')
    find('a[onclick="ativaedesativa3()"]').click
    find('a[onclick="ativaedesativa3()"]').double_click
    find('a[onclick="ativaedesativa2()"]').right_click
    sleep(10)
    visit '/'
    click_link("Github")
    sleep(10)
end