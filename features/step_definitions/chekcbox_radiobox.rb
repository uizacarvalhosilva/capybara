Quando('eu marco um checkbox e um radiobox') do
    visit 'buscaelementos/radioecheckbox'
    #find('label[for="purple"]').click
    find('label[for="white"]').click
    check('purple', allow_label_click: true)
    uncheck('purple', allow_label_click: true)
    sleep (5)
    #checkbox
    choose('blue', allow_label_click: true)
    choose('yellow', allow_label_click: true)
    sleep (5)
end