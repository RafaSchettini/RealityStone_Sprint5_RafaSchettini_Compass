Dado('que o usuário acesse a página inicial') do
    visit ('https://www.google.com.br')
end
  
Então('logo do Google deverá ser exibida') do
    expect(page).to have_content "Gmail"
    expect(page).to have_css ".lnXdpd"
end

Quando('buscar por {string}') do |termo|
    find("input[name='q']").set termo
    find(".gNO89b").click
end
  
Então('resultados deverão ser exibidos ao usuário') do
    expect(page).to have_content "Jeep Compass"
end