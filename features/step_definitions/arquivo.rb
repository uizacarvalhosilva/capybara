Quando('eu faço o upload de arquivos') do
    visit'outros/uploaddearquivos'
    #attach_file('upload', 'features\download.jpeg', make_visible:true)
    
    @foto = File.join(Dir.pwd, 'features/download.jpeg')
    attach_file('upload', @foto, make_visible:true)
    sleep(3)

end