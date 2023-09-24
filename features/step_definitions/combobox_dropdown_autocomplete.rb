Quando('interajo com dropdown e select') do
    visit '/buscaelementos/dropdowneselect'
    find('.btn.dropdown-button').click
    find('#dropdown3').click
    #select'Dragon Ball', from: 'select-options-27c023ad-20e8-c7bb-bcf1-dbeb204c2bc70
    #select'Brasil', from: 'select-wrapper'
    select'Chrome', from: 'dropdown'
    sleep(2)
    find('option[value="2"]').select_option
    sleep(10)


  end
  
  Quando('preencho o autocomplete') do
    visit 'widgets/autocomplete'
    find('#autocomplete-input').set'Minas Ge'
    find('ul[id^="autocomplete-options-"]').click
    #find('ul', text: 'Minas Gerais').click
    sleep(10)
  end


