Dado('que o usuário acesse a página inicial') do
    @google_home = GoogleHome.new
    @google_home.load
end
  
Então('logo do Google deverá ser exibida') do
    expect(@google_home).to have_content "Gmail"
    expect(@google_home).to have_css ".lnXdpd"
end

Quando('buscar por {string}') do |termo|
    @google_home.search_for(termo)
    @google_results = GoogleResults.new
end
  
Então('resultados deverão ser exibidos ao usuário') do
    expect(@google_results).to have_content "Jeep Compass"
end