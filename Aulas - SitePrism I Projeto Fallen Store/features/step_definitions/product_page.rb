Quando('acessar a página do produto') do
    @search_results_page.access_product_page(0)
    @product_page = Pages::ProductPage.new
end
  
Quando('o usuário alterar a cor do produto') do
    @image_before = @product_page.main_image['src']
    @product_page.colors[0].click
end
  
Então('deverá ser exibido o produto na respectiva cor escolhida') do
    expect(@product_page.main_image['src']).not_to eql @image_before
end