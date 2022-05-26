Dado('que o usuário acesse a página inicial do Google') do
    @home_page = Home.new
    @home_page.load
end
  
Então('logo da Google deverá ser exibida') do
    expect(@home_page).to have_logo
end