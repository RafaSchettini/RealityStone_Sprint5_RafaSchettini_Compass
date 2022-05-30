Dado('que o usuário esteja na página inicial') do
    @home_page = Home.new
    @home_page.load
end
  
Quando('realizar a busca por um produto') do
    @home_page.search_for("Headset")
    @search_results_page = SearchResults.new
end
  
Então('deverão ser retornados ao usuário resultados de acordo com a busca') do
    expect(@search_results_page).to have_products
end