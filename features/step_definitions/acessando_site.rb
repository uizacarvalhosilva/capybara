
#Quando('acesso a URL') do
    #visit('http://localhost:3000/')
    #visit('/treinamento/home')
    #sleep(5)
#end

Quando('acesso a URL') do
    @home = Home.new
    @home.load
    sleep(5)
end
Então('eu verifico se estou na página correta') do
    expect(page).to have_current_path('http://localhost:3000//treinamento/home', url: true)
end