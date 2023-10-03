class AjaxPage <SitePrism::Page
    #toda vez que chaavr a classe e fazer o .load vai abrir essa página
    set_url '/buscaelementos/botoes'

    element :botao, '#teste'
    element :mensagem, '#div1'

    def clicar_botao
        wait_for_botao
        botao.click
    end
end