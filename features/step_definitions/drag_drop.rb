
Dado('estou na tela de dragdrop') do
    visit'iteracoes/draganddrop'
end
  
Quando('movo o dragdrop') do
    #mapear os elementos 
    @carinha = find('#winston')
    @caixa = find('#dropzone')

    @carinha.drag_to(@caixa)
    sleep(5)
end




