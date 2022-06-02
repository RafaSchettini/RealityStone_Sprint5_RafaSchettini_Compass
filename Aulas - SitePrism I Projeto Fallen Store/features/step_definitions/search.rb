Dado('que o usuário esteja na página inicial') do
    @home_page = Pages::Home.new
    @home_page.load
end
  
Quando('realizar a busca por um produto') do
    @home_page.search_for("Camisas")
    @search_results_page = Pages::SearchResults.new
end
  
Então('deverão ser retornados ao usuário resultados de acordo com a busca') do
    expect(@search_results_page).to have_products
    expect(@search_results_page.products.first.all_there?).to be_truthy
end

Quando('realizar a busca pelo {string}') do |product|
    @home_page.search_for(product)
    @search_results_page = Pages::SearchResults.new
end